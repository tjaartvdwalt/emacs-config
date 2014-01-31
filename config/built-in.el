;; Configure built in emacs modules
(require 'iso-transl)

;; add tramp for editing remote files
(require 'tramp)
(setq tramp-default-method "scp")
(setq ispell-change-dictionary "british")

;; use dired-x for hiding hiddin files
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable

;; 1) Hide files that start with # (emacs tmp files)
;; 2) Hide files that start with . then not a dot then anything
;;    This will hide any hidden files, but not . and .. that I use to navigate
(setq dired-omit-files "^#\\|^\\.[^.].*$") 

;; Customize compile command
;; For c files search for nearest Makefile
(require 'cl)
(defun* get-closest-pathname (&optional (file "Makefile"))
  (let ((root (expand-file-name "/")))
    (expand-file-name file
		      (loop 
			for d = default-directory then (expand-file-name ".." d)
			if (file-exists-p (expand-file-name file d))
			return d
			if (equal d root)
			return nil))))

(require 'compile)

