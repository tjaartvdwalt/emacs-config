;; use dired-x for hiding hiddin files
(req-package dired-x
  :diminish omit-mode
  :require dired
  :config
  (progn
    (setq-default dired-omit-files-p t)
    ;; 1) Hide files that start with # (emacs tmp files)
    ;; 2) Hide files that start with . then not a dot then anything
    ;;    This will hide any hidden files, but not . and .. that I use to navigate
    (setq dired-omit-files "^#\\|^\\.[^.].*$")))
