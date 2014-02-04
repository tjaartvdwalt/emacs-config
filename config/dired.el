;; use dired-x for hiding hiddin files
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable

;; 1) Hide files that start with # (emacs tmp files)
;; 2) Hide files that start with . then not a dot then anything
;;    This will hide any hidden files, but not . and .. that I use to navigate
(setq dired-omit-files "^#\\|^\\.[^.].*$") 

