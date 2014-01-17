;************* Set some theme details *******************
;; Set the theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 ;;'(custom-enabled-themes (quote (wombat)))
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(rails-ws:default-server-type "webrick")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))

;; Get deadkeys to work
(require 'iso-transl)

;; add tramp for editing remote files
(require 'tramp)
(setq tramp-default-method "scp")

;; Swap c-x and c-u and m-x and m-u ... useful for dvorak layout
;;(keyboard-translate ?\C-x ?\C-u)
;;(keyboard-translate ?\C-u ?\C-x)
(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])

;;(keyboard-translate ?\M-x ?\M-u)
;;(keyboard-translate ?\M-u ?\M-x)

(global-set-key "\C-x." 'mulled/edit-trailing-edges)
(global-set-key "\C-x," 'mulled/edit-leading-edges)

;; Disable menu-bar
(menu-bar-mode -1)

;; use dired-x for hiding hiddin files
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable

;; 1) Hide files that start with # (emacs tmp files)
;; 2) Hide files that start with . then not a dot then anything
;;    This will hide any hidden files, but not . and .. that I use to navigate
(setq dired-omit-files "^#\\|^\\.[^.].*$") 

;; Set a shortcut for compile
(global-set-key "\C-xc" 'compile)

;; make whitespace-mode use just basic coloring
(global-set-key "\C-cw" 'whitespace-mode)
;;(global-whitespace-mode 1)

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
  (add-hook 'c-mode-hook (lambda () (set (make-local-variable 'compile-command) (format "make -f %s" (get-closest-pathname)))))

  (add-hook 'c++-mode-hook (lambda () (set (make-local-variable 'compile-command) (format "make -f %s" (get-closest-pathname)))))

;; set return to use indent
(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key "\C-cf" 'find-grep-dired)
(global-set-key "\C-cn" 'find-name-dired)


(load "~/.emacs.d/config/repo-config")
(load "~/.emacs.d/config/elpa")
(load "~/.emacs.d/config/w3m")
(load "~/.emacs.d/config/el-get")
(load "~/.emacs.d/config/mu4e")
(load "~/.emacs.d/config/manual-install")
(load "~/.emacs.d/config/modes")
(load "~/.emacs.d/config/file-extensions")
(load "~/.emacs.d/config/abandoned")
(load "~/.emacs.d/config/sudo-edit-current-file")
(load "~/.emacs.d/config/clean-buffer")
