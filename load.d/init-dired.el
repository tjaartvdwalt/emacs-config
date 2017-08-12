;; Configure dired to sort directories first
(setq dired-listing-switches "-alh")
;; used to attach files in mu4e
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
(setq diredp-hide-details-initially-flag nil)
(setq dired-auto-revert-buffer t)
(define-key dired-mode-map (kbd "\\") 'dired-get-size)
(define-key dired-mode-map (kbd "/") 'diredp-up-directory-reuse-dir-buffer)

(use-package dired-k
  ;; use dired-k as alternative to revert buffer. This will refresh git status
  :bind (:map dired-mode-map
              ("g" . dired-k))
  :config
  (add-hook 'dired-mode-hook 'dired-k))

(use-package dired-open
  ;; :require dired
  :bind (:map dired-mode-map
              ("," . tvdw/dired-decrypt-open-xdg)))
