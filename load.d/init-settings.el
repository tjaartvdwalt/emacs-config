(setq split-width-threshold 120)

;; new in emacs 24.4.1... set mode so that long lines are trucated
(setq global-visual-line-mode t)

;; (auto-save-visited-mode)
;; (global-hl-line-mode 1)
;; (scroll-bar-mode -1)
;; Dont show the splash screen
(setq inhibit-splash-screen t)
;; (setq tab-width 4)
;; (setq standard-indent 4)
(electric-indent-mode t)
;;(setq-default tab-always-indent nil)
;;(setq-default indent-tabs-mode t)
;; (global-linum-mode t)



(setq compilation-scroll-output t)

(setq browse-url-browser-function 'browse-url-generic
	  browse-url-generic-program "google-chrome-stable")


;; (setq eshell-cmpl-cycle-completions nil)

;; automatically close brackets
;; (electric-pair-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
;; delete the selection if you start typing
(delete-selection-mode 1)
;;(setq show-paren-style 'expression)

(auto-revert-mode t)
(menu-bar-mode -1)
(add-hook 'find-file-hook (lambda () (ruler-mode 1)))
;; (cua-mode t)
