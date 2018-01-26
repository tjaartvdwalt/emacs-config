(require 'dired)
;; Configure dired to sort directories first
(setq dired-listing-switches "-alh")
;; used to attach files in mu4e
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
(setq diredp-hide-details-initially-flag nil)
(setq dired-auto-revert-buffer t)
(define-key dired-mode-map (kbd "\\") 'dired-get-size)
(define-key dired-mode-map (kbd "/") 'diredp-up-directory-reuse-dir-buffer)
(setq dired-omit-mode t)
(setq-default dired-omit-files-p t)
;; 1) Hide files that start with # (emacs tmp files)
;; 2) Hide files that start with . then not a dot then anything
;;    This will hide any hidden files, but not . and .. that I use to navigate
(setq dired-omit-files "^#\\|^\\.[^.].*$")

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

(use-package diredful
  :config (diredful-mode 1))

;; (use-package dired+
;; :config
(toggle-diredp-find-file-reuse-dir 1)
(setq diredp-image-preview-in-tooltip nil)
;; )
