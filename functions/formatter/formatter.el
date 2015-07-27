(defgroup formatter ()
  "Free keys."
  :group 'convenience)

(cl-defstruct formatter command modes)

(setq formatters '())

(setq javascript-standard-format (make-formatter
                                  :command "standard-format -"
                                  :modes '(js-mode js2-mode js3-mode)))

(add-to-list 'formatters 'javascript-standard-format)

(print formatters)
(setq c-astyle-format (make-formatter
                       :command "astyle"
                       :modes '(c-mode c++-mode)))

(add-to-list 'formatters 'javascript-standard-format)

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
                           "standard-format -"
                           (current-buffer) t
                           (get-buffer-create "*standard-format Errors*") t))
