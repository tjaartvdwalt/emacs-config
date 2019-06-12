(use-package smartparens
  :bind ("C-c k" . sp-kill-sexp)

  :config
  (require 'smartparens-config)
  (smartparens-global-strict-mode))
