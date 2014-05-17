(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-hook 'c-mode-hook (lambda ()
			 (set (make-local-variable 'compile-command)
			      (format "make -f %s" (get-closest-pathname)))))
(add-hook 'c++-mode-hook (lambda ()
			   (set (make-local-variable 'compile-command)
				(format "make -f %s" (get-closest-pathname)))))
