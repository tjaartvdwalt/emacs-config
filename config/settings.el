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

;; Dont show the splash screen
(setq inhibit-splash-screen t)

;; Use spaces for indentation
(setq tab-width 2)
(setq-default indent-tabs-mode nil)

;; Disable menu-bar
(menu-bar-mode -1)

;; enable line numbers
(global-linum-mode t)

;;(setq default-minibuffer-frame
;;      (make-frame
;;       '((name . "minibuffer")
;;         (width . 20)
;;         (height . 80)
;;         (minibuffer . only)
;;         (top . 0)
;;         (right . 0)
;;         )))
;;(setq-default mode-line-format nil)
