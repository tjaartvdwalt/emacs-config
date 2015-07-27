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
   (print command))

 ;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (formatter-format-region (point-min) (point-max) 'f)

  (goto-char temp-point))


(defun formatter-format-region (pmin pmax overwrite)

  (print
    (shell-command-on-region pmin pmax
                           (get-formatter-command)
                           (current-buffer) 'overwrite)
   )

  (shell-command-on-region pmin pmax
                           (get-formatter-command)
                           (current-buffer) 'overwrite
                           (get-buffer-create "*Formatter Errors*") t))

(provide 'formatter)
;;; formatter ends here)
