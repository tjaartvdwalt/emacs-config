(use-package ansible
  :hook (yaml-mode . ansible)
  :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

  (use-package ansible-doc
    :config
    (add-hook 'yaml-mode-hook #'ansible-doc-mode)))
