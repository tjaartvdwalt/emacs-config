(use-package ansible
  :hook (yaml-mode . ansible))
  ;; :config
  ;; (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(use-package ansible-doc
  :hook (yaml-mode . ansible-doc-mode))
    ;; :config
    ;; (add-hook 'yaml-mode-hook #'ansible-doc-mode)))
