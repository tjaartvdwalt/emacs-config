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
(add-to-list 'formatters 'c-astyle-format)

(defun get-formatter ()
    (dolist (formatter formatters)
      (setq value (cons elt value))))
    (member major-mode formatters) 

    )

;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (formatter-format-region 'get-formatter (point-min) (point-max))
  (goto-char temp-point))


(defun formatter-format-region (pmin pmax)

  (shell-command-on-region pmin pmax
                           "standard-format -"
                           (current-buffer) t
                           (get-buffer-create "*standard-format Errors*") t))
