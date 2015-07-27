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

  ;; if the formatter-test-region returned successfully
  (if (= (formatter-test-region (point-min) (point-max)) 0)
      (progn
        (formatter-format-region (point-min) (point-max))))

  (goto-char temp-point))

(defun formatter-test-region (pmin pmax)
  ;; return the shell return code 0 = success
   (shell-command-on-region pmin pmax
                                  (get-formatter-command)))


(defun formatter-format-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           (get-formatter-command)
                           (current-buffer) t
                           (get-buffer-create "*Formatter Errors*") t))

(provide 'formatter)
;;; formatter ends here)
