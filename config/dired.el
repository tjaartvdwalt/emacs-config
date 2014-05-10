;; dired+
(elpa-install 'dired+)

;; used to attach files in mu4e
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

(require 'dired+)
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-alh")

(toggle-diredp-find-file-reuse-dir 1)
(setq  diredp-image-preview-in-tooltip nil)


;; use dired-x for hiding hiddin files
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable

;; 1) Hide files that start with # (emacs tmp files)
;; 2) Hide files that start with . then not a dot then anything
;;    This will hide any hidden files, but not . and .. that I use to navigate
(setq dired-omit-files "^#\\|^\\.[^.].*$") 

;; use dired-k to show git status
(elpa-install 'dired-k)
(require 'dired-k)
;; use dired-k as alternative to revert buffer. This will refresh git status
(define-key dired-mode-map (kbd "g") 'dired-k)
(add-hook 'dired-mode-hook 'dired-k)
;;(setq dired-k-style 'git)

