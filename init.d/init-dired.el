;;; package --- summary
;;; Commentary:
;;; Code:

(req-package dired
    ;; :bind ("g" . 'dired-k))
  :init
  (progn
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-alh")
    ;; used to attach files in mu4e
    (add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
    ))

(req-package dired+
  :require dired
  :init
  (progn
   (toggle-diredp-find-file-reuse-dir 1)
   (setq  diredp-image-preview-in-tooltip nil)
   ))

;; use dired-x for hiding hiddin files
(req-package dired-x
  :require dired
  :init
  (progn
    (setq-default dired-omit-files-p t)
    ;; 1) Hide files that start with # (emacs tmp files)
    ;; 2) Hide files that start with . then not a dot then anything
    ;;    This will hide any hidden files, but not . and .. that I use to navigate
    (setq dired-omit-files "^#\\|^\\.[^.].*$") 
    ))

;; use dired-x for hiding hiddin files
(req-package dired-open
  :require dired
  :init
  (progn
    (define-key dired-mode-map (kbd ",") 'dired-open-xdg)
    ))


;; use dired-k to show git status
(req-package dired-k
  :require dired
  :init
  (progn
    ;; use dired-k as alternative to revert buffer. This will refresh git status
    (define-key dired-mode-map (kbd "g") 'dired-k)
    (add-hook 'dired-mode-hook 'dired-k)
    ;;(setq dired-k-style 'git)
    ))

(provide 'init-dired)
;;; dired ends here
