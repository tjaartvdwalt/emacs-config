(req-package json-mode
  :config(progn
           (flycheck-add-mode 'json-jsonlint 'json-mode)
           ))
