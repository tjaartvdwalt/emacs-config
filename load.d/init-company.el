(use-package company
  :hook
  (after-init-hook . global-company-mode)
  :config
  (setq company-idle-delay 0))
