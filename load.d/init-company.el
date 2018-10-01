(use-package company
  ;; :hook
  ;; (after-init-hook . global-company-mode)
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-idle-delay 0))
