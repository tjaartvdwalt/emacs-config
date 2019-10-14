(use-package smartparens-config
  :ensure smartparens
  :bind ("C-c k" . sp-kill-sexp)
  :hook ((prog-mode . smartparens-mode)
          (markdown-mode . smartparens-mode))

  :config
  (show-smartparens-global-mode t))
