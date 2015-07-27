(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (standard-format-region (point-min) (point-max))
  (goto-char temp-point))

(defun standard-format-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           "standard-format -"
                           (current-buffer) t
                           (get-buffer-create "*standard-format Errors*") t))


(formatter-define-format javascript-standard-format

  :command ("standard-format -")
  :modes (js-mode js2-mode js3-mode))

(formatter-define-format c-astyle-format

  :command ("standard-format -")
  :modes (c-mode))



(with-current-buffer buffer-or-string major-mode)



;;; Convenience definition of command-syntax checkers
(defmacro formatter-define-format (symbol docstring &rest properties)
  "Define SYMBOL as command syntax checker with DOCSTRING and PROPERTIES.

Like `flycheck-define-command-checker', but PROPERTIES must not
be quoted.  Also, implicitly define the executable variable for
SYMBOL with `flycheck-def-executable-var'."
  (declare (indent 1)
           (doc-string 2))
  (let ((command (plist-get properties :command))
        (parser (plist-get properties :error-parser))
        (filter (plist-get properties :error-filter))
        (predicate (plist-get properties :predicate))
        (verify-fn (plist-get properties :verify)))

    `(progn
       (flycheck-def-executable-var ,symbol ,(car command))

       (flycheck-define-command-checker ',symbol
         ,docstring
         :command ',command
         ,@(when parser
             `(:error-parser #',parser))
         :error-patterns ',(plist-get properties :error-patterns)
         ,@(when filter
             `(:error-filter #',filter))
         :modes ',(plist-get properties :modes)
         ,@(when predicate
             `(:predicate #',predicate))
         :next-checkers ',(plist-get properties :next-checkers)
         ,@(when verify-fn
             `(:verify #',verify-fn))
         :verify ))))

