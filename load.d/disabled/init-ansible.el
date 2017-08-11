(use-package ansible
  :config(progn
           (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))))
