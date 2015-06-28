(req-package json-mode
  :require (flycheck)
  :config(progn
           (flycheck-add-mode 'json-jsonlint 'json-mode)
           ))
