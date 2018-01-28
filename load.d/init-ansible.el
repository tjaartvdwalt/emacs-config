(use-package ansible
  :hook (yaml-mode . (lambda ()
                       (interactive)
                       (ansible 1))))
;; :config
;; (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(use-package ansible-doc
  :hook (yaml-mode . ansible-doc-mode))
;; :config
;; (add-hook 'yaml-mode-hook #'ansible-doc-mode)))
