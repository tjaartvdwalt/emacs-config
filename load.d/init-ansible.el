(use-package ansible
  :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1))))
