;; use dired-x for hiding hidden files
(req-package dired-x
  :require dired
  :config
  (progn
    (setq dired-omit-mode t)
    (setq-default dired-omit-files-p t)
    ;; 1) Hide files that start with # (emacs tmp files)
    ;; 2) Hide files that start with . then not a dot then anything
    ;;    This will hide any hidden files, but not . and .. that I use to navigate
    (setq dired-omit-files "^#\\|^\\.[^.].*$")))
