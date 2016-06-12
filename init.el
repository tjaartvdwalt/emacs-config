;;; package --- summary
;;; Commentary:
;;; Code:
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "f245c9f24b609b00441a6a336bcc556fe38a6b24bfc0ca4aedd4fe23d858ba31" "b6db49cec08652adf1ff2341ce32c7303be313b0de38c621676122f255ee46db" "3a3917dbcc6571ef3942c2bf4c4240f70b5c4bc0b28192be6d3f9acd83607a24" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "0b6645497e51d80eda1d337d6cabe31814d6c381e69491931a688836c16137ed" "09669536b4a71f409e7e2fd56609cd7f0dff2850d4cbfb43916cc1843c463b80" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(gac-automatically-push-p t)
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(magit-push-arguments nil)
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

;; (set-frame-font "Cousine-13" nil t)
;;(set-frame-font "Source Code Pro-13" nil t)
;; (set-frame-font "DejaVu Sans Mono-12" nil t)
;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa
(load "~/.emacs.d/elpa" 1)

;; install req-package manually, everything else gets installed with req-package
(elpa-install 'req-package)
(require 'req-package)

;; load manually installed packages
(add-to-list 'load-path "~/.emacs.d/manual/")
;; (add-to-list 'load-path "~/.emacs.d/functions/")
;; (add-to-list 'load-path "~/.emacs.d/init.d/")

(elpa-install 'load-dir)
(require 'load-dir)
;; (setq load-dirs '("~/.emacs.d/functions" "~/.emacs.d/init.d"))
(load-dir-one "~/.emacs.d/functions")
(setq load-dir-recursive t)
(load-dir-one "~/.emacs.d/init.d")
;; (load-dir-one "~/.emacs.d/init.d/dired")
;; (load-dir-one "~/.emacs.d/init.d/helm")
;;(setq load-dirs t)
;;(setq load-dir-recursive t)
(load-dirs-reload)

;;(load-dir-one "~/.emacs.d/init.d")
;; (message "got here!")
(req-package-finish)
;; (message "done!")

;; require load-dir. this loads all files in the given dirs.
;; (setq req-package-verbose 1)
;; (req-package load-dir
;;   :ensure load-dir
;;   :config (progn
;;           (setq load-dirs '("~/.emacs.d/functions" "~/.emacs.d/init.d"))))

;; actually load the packages
;; (req-package-finish)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "monospace" :slant normal :weight lighter :height 190 :width normal)))))


(put 'upcase-region 'disabled nil)
