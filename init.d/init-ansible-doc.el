(use-package ansible-doc
  :config(progn
           (add-hook 'yaml-mode-hook #'ansible-doc-mode)))
