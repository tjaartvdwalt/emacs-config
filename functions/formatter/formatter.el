(defgroup formatter ()
  "Free keys."
  :group 'convenience)

(cl-defstruct formatter command modes)

(setq formatter-formatters
      (list
       (make-formatter
        :command "astyle"
        :modes '(c-mode c++-mode))

       (make-formatter
        :command "standard-format -"
        :modes '(js-mode js2-mode js3-mode))
       ))

(defun get-formatter-command ()
  (dolist (f formatter-formatters)
    (if (member major-mode (formatter-modes f))
        (setq command (formatter-command f))))
  command)

 ;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))

  ;; Save the buffer after first removing the hook to prevent infinite loop
  (remove-hook 'before-save-hook 'formatter-format-buffer t t)
  (save-buffer)
  (add-hook 'before-save-hook 'formatter-format-buffer t t)

  ;; if the formatter-format-region returned successfully
  (if (/= (formatter-format-region (point-min) (point-max)) 0)
      (progn
        ;; if formatting failed we revert to the version we just saved
        (revert-buffer t t t)))
  ;; (formatter-format-region (point-min) (point-max));;))
  (goto-char temp-point))

(defun formatter-format-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           (get-formatter-command)
                           t t
                           (get-buffer-create "*Formatter Errors*") t))

(provide 'formatter)
;;; formatter ends here
