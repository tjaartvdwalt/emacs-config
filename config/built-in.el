;; Configure built in emacs modules

;;(require 'iso-transl)

;; add tramp for editing remote files
(require 'tramp)
(setq tramp-default-method "scp")



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
