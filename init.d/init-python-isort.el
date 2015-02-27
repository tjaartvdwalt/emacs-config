(req-package py-isort
  :config(progn (add-hook 'before-save-hook 'py-isort-before-save)))

