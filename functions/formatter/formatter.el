(defgroup formatter ()
  "Free keys."
  :group 'convenience)

(cl-defstruct formatter command modes)

(setq javascript-standard-format (make-formatter
                                  :command "standard-format -"
                                  :modes '(js-mode js2-mode js3-mode)))

(setq c-astyle-format (make-formatter
                       :command "astyle"
                       :modes '(c-mode c++-mode))



;;;###autoload
(defun formatter ()
  (setq formatters ())


  

  )



(defmacro formatter-define-format (symbol docstring &rest properties)
  "Define SYMBOL as command syntax checker with DOCSTRING and PROPERTIES."

  (let ((command (plist-get properties :command))
        (modes (plist-get properties :modes)))
    (append formatters '(modes command))))










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
