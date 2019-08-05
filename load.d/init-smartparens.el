(use-package smartparens-config
  :ensure smartparens
  :bind ("C-c k" . sp-kill-sexp)

  :config
  (show-smartparens-global-mode t)
  (require 'smartparens-config))
