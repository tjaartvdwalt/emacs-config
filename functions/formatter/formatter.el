(defgroup formatter ()
  "Free keys."
  :group 'convenience)


;;;###autoload
(defun formatter ()
  
  )


(defmacro formatter-define-format (symbol docstring &rest properties)
  "Define SYMBOL as command syntax checker with DOCSTRING and PROPERTIES."

  (let ((command (plist-get properties :command))
        (modes (plist-get properties :modes)))
    (append 'formatters '(modes command))))


(formatter-define-format javascript-standard-format
                         ""

                         :command ("standard-format -")
                         :modes (js-mode js2-mode js3-mode))

(formatter-define-format c-astyle-format
                         ""

                         :command ("standard-format -")
                         :modes (c-mode c++-mode))

(print major-mode)






;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (formatter-format-region (point-min) (point-max))
  (goto-char temp-point))


(defun formatter-format-region (pmin pmax)g
  (shell-command-on-region pmin pmax
                           "standard-format -"
                           (current-buffer) t
                           (get-buffer-create "*standard-format Errors*") t))


