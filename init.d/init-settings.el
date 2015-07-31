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

(global-hl-line-mode 1)

;; Dont show the splash screen
(setq inhibit-splash-screen t)
(setq tab-width 2)
(setq-default indent-tabs-mode nil)
;; (global-linum-mode t)


(setq compilation-scroll-output t)

;; (setq eshell-cmpl-cycle-completions nil)

;; automatically close brackets
;; (electric-pair-mode t)
;; delete the selection if you start typing
(delete-selection-mode 1)
;;(setq show-paren-style 'expression)
