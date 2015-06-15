(req-package py-autopep8
  :require(python-mode)
  :config((add-hook 'python-mode-hook 'py-autopep8-enable-on-save)))
