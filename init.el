;;; package --- summary
;;; Commentary:
;;; Code:
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-go company-elisp company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-ropemacs company-cmake company-capf
                (company-dabbrev-code company-gtags company-etags company-keywords)
                company-oddmuse company-files company-dabbrev)))
 '(gac-automatically-push-p t)
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

(set-frame-font "Cousine-13" nil t)
;;(set-frame-font "Source Code Pro-13" nil t)
;; (set-frame-font "DejaVu Sans Mono-12" nil t)
;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa
(load "~/.emacs.d/elpa" 1)

;; install req-package manually, everything else gets installed with req-package
(elpa-install 'req-package)
(require 'req-package)

;; load manually installed packages
;; (add-to-list 'load-path "~/.emacs.d/manual/")
;; (add-to-list 'load-path "~/.emacs.d/functions/")
;; (add-to-list 'load-path "~/.emacs.d/init.d/")

(elpa-install 'load-dir)
(require 'load-dir)
;; (setq load-dirs '("~/.emacs.d/functions" "~/.emacs.d/init.d"))
(load-dir-one "~/.emacs.d/functions")
(load-dir-one "~/.emacs.d/init.d")
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
;; (put 'upcase-region 'disabled nil)
;; (req-package-finish)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
