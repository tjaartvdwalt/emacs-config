(use-package dired
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-alh")
    ;; used to attach files in mu4e
    (add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
    (setq diredp-hide-details-initially-flag nil)
    (setq dired-auto-revert-buffer t)
    (define-key dired-mode-map (kbd "\\") 'dired-get-size)
    (define-key dired-mode-map (kbd "/") 'diredp-up-directory-reuse-dir-buffer))
