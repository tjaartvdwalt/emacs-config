(req-package  dired-toggle-sudo
  :config
  (progn
(define-key dired-mode-map (kbd "C-c C-s") 'dired-toggle-sudo)
(eval-after-load 'tramp
 '(progn
    ;; Allow to use: /sudo:user@host:/path/to/file
    (add-to-list 'tramp-default-proxies-alist
		  '(".*" "\\`.+\\'" "/ssh:%h:"))))))
