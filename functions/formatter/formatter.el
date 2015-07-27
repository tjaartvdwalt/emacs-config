(defgroup formatter ()
  "Free keys."
  :group 'convenience)

(cl-defstruct formatter command modes)

(setq formatters nil)

(setq javascript-standard-format (make-formatter
                                  :command "standard-format -"
                                  :modes '(js-mode js2-mode js3-mode emacs-lisp-mode)))

(setq c-astyle-format (make-formatter
                       :command "astyle"
                       :modes '(c-mode c++-mode)))

(setq formatters (list javascript-standard-format c-astyle-format))

(defun get-format-command ()
  (dolist (f formatters)
    (if (member major-mode (formatter-modes f))
         (setq command (formatter-command f))))
   (message command)
  )

;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (formatter-format-region (point-min) (point-max))
  (goto-char temp-point))


(defun formatter-format-region (pmin pmax)

  (shell-command-on-region pmin pmax
                           (get-format-command)
                           (current-buffer) t
                           (get-buffer-create "*Formatter Errors*") t))
