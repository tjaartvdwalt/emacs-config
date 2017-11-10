(setq split-width-threshold 120)

;; new in emacs 24.4.1... set mode so that long lines are trucated
(setq global-visual-line-mode t)

(global-hl-line-mode 1)
;; (scroll-bar-mode -1)
;; Dont show the splash screen
(setq inhibit-splash-screen t)
;;(setq tab-width 2)
;;(setq-default indent-tabs-mode t)
;; (global-linum-mode t)


(setq compilation-scroll-output t)

;; (setq eshell-cmpl-cycle-completions nil)

;; automatically close brackets
(electric-pair-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
;; delete the selection if you start typing
(delete-selection-mode 1)
;;(setq show-paren-style 'expression)

(auto-revert-mode t)
(menu-bar-mode -1)
(cua-mode t)
