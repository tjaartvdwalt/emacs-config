(req-package py-autopep8
  :require(python-mode)
  :config(progn
          (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)))
