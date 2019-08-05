(use-package smartparens-config
  :ensure smartparens
  :hook ((prog-mode . turn-on-smartparens-strict-mode)
          (markdown-mode . turn-on-smartparens-strict-mode))
  :bind ("C-c k" . sp-kill-sexp)

  :config
  (show-smartparens-global-mode t)
  (require 'smartparens-config))
