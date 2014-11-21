;; ;; ;; This script leads all the .el files in a given directory.
;;  (load "~/.emacs.d/load-directory" 1)
;;  (require 'load-directory)
;;  ;; load manually installed files 
;;  (load-directory "~/.emacs.d/manual" 1)
;;  (load-directory "~/.emacs.d/config" 1)
;;  (load-directory "~/.emacs.d/config/functions" 1)

(setq split-width-threshold 0)

;; new in emacs 24.4.1... set mode so that long lines are trucated
(setq global-visual-line-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 '(company-backends (quote (company-go company-elisp company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-ropemacs company-cmake company-capf (company-dabbrev-code company-gtags company-etags company-keywords) company-oddmuse company-files company-dabbrev)))
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))

;; Dont show the splash screen
(setq inhibit-splash-screen t)
(setq tab-width 2)
(setq-default indent-tabs-mode nil)
(menu-bar-mode -1)
(global-linum-mode t)

(elpa-install 'solarized-theme)
(load-theme 'solarized-dark)

(setq compilation-scroll-output t)

;; (setq eshell-cmpl-cycle-completions nil)

;; automatically close brackets
(electric-pair-mode t)
;; delete the selection if you start typing
(delete-selection-mode 1)
;;(setq show-paren-style 'expression)
