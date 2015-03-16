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
 '(company-backends
   (quote
    (company-go company-elisp company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-ropemacs company-cmake company-capf
                (company-dabbrev-code company-gtags company-etags company-keywords)
                company-oddmuse company-files company-dabbrev)))
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(gac-automatically-push-p t)
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

(set-frame-font "DejaVu Sans Mono-12" nil t)
;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa
(load "~/.emacs.d/elpa" 1)

;; install req-package manually, everything else gets installed with req-package
(elpa-install 'req-package)

;; load manually installed packages
(add-to-list 'load-path "~/.emacs.d/manual/")

;; require load-dir. this loads all files in the given dirs.
(require 'req-package)
(use-package load-dir
  :ensure load-dir
  :init (progn
          (setq load-dirs '("~/.emacs.d/functions/" "~/.emacs.d/init.d/"))
  ;; show details in *Messages* buffer
  (setq req-package-verbose 1)

  ;; actually load the packages
  (req-package-finish)

  ))


(provide 'init)
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
