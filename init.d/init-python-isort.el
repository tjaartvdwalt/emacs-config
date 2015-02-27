(req-package python-isort
  :config((add-hook 'before-save-hook 'py-isort-before-save)))

