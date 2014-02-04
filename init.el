;; ********* General settings **********
(load "~/.emacs.d/config/settings")

;; configure built in packages 
(load "~/.emacs.d/config/built-in")

;; configure where the backup files go
(load "~/.emacs.d/config/backup")

;;configure global keyboard shortcuts
(load "~/.emacs.d/config/shortcuts")

;; add hooks
(load "~/.emacs.d/config/hooks")

;; set which mode to use for what kind of file
(load "~/.emacs.d/config/file-extensions")

;; ********* Configure package managers *********
;; We use elpa as far as possible, otherwise el-get
(load "~/.emacs.d/config/elpa")
(load "~/.emacs.d/config/el-get")

;; ********* Package specific config ******** 
;;(load "~/.emacs.d/config/clean-buffer-list")
;;(load "~/.emacs.d/config/helm")
(load "~/.emacs.d/config/dired")
(load "~/.emacs.d/config/go")
(load "~/.emacs.d/config/ido")
(load "~/.emacs.d/config/magit")
(load "~/.emacs.d/config/mu4e")
(load "~/.emacs.d/config/multi-web-mode")
(load "~/.emacs.d/config/openwith")
;;(load "~/.emacs.d/config/news-ticker")
(load "~/.emacs.d/config/rinari")
(load "~/.emacs.d/config/sage")
(load "~/.emacs.d/config/tramp")
(load "~/.emacs.d/config/w3m")
(load "~/.emacs.d/config/yasnippet")

;; custom functions that does not belong with any plugin
(load "~/.emacs.d/config/functions/toggle-window-split")

;; Plugins that are not used anymore
;;(load "~/.emacs.d/config/abandoned")
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
 '(persp-nil-name "none")
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
