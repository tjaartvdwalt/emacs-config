(req-package smartparens-config
  :ensure smartparens
  :config (progn
            (smartparens-global-mode t)
            (define-key smartparens-mode-map (kbd "C-M-d") 'sp-down-sexp)
            (define-key smartparens-mode-map (kbd "C-M-a") 'sp-backward-down-sexp)
            (define-key smartparens-mode-map (kbd "C-S-d") 'sp-beginning-of-sexp)
            (define-key smartparens-mode-map (kbd "C-S-a") 'sp-end-of-sexp)

            (define-key smartparens-mode-map (kbd "C-M-e") 'sp-up-sexp)
            (define-key smartparens-mode-map (kbd "C-M-u") 'sp-backward-up-sexp)
            (define-key smartparens-mode-map (kbd "C-M-t") 'sp-transpose-sexp)

            (define-key smartparens-mode-map (kbd "C-M-n") 'sp-next-sexp)
            (define-key smartparens-mode-map (kbd "C-M-p") 'sp-previous-sexp)

            (define-key smartparens-mode-map (kbd "C-M-k") 'sp-kill-sexp)
            (define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp)
            ))
