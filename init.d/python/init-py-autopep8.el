(use-package py-autopep8
  :require(python-mode)
  :init(progn
          (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)))
