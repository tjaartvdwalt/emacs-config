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
    ("3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "cdc7555f0b34ed32eb510be295b6b967526dd8060e5d04ff0dce719af789f8e5" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))

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
          (load-dir-one "~/.emacs.d/functions")
          (load-dir-one "~/.emacs.d/init.d")
          ))

;; show details in *Messages* buffer
(setq req-package-verbose 1)

;; actually load the packages
(req-package-finish)

(provide 'init)
(put 'upcase-region 'disabled nil)
