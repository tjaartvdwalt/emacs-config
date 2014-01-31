(add-hook 'text-mode-hook 'ispell-minor-mode)

(add-hook 'text-mode-hook 'flyspell-mode)

(add-hook 'rhtml-mode-hook (lambda () (rinari-launch)))

(add-hook 'before-save-hook  'force-backup-of-buffer)

(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

(add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)

(add-hook 'ruby-mode 'auto-make-header)

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'prog-mode-hook 'column-enforce-mode)

(add-hook 'js-mode-hook 'conkeror-minor-mode)

(add-hook 'js-mode-hook (lambda ()
                          (when (string= ".conkerorrc" (buffer-name))
                            (conkeror-minor-mode 1))))

(add-hook 'c-mode-hook (lambda ()
			 (set (make-local-variable 'compile-command)
			      (format "make -f %s" (get-closest-pathname)))))
(add-hook 'c++-mode-hook (lambda ()
			   (set (make-local-variable 'compile-command)
				(format "make -f %s" (get-closest-pathname)))))
