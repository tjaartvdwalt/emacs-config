;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/elpa" 1)
;; install use-package manually
(elpa-install 'use-package)

(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t) ;; always install packages with elpa
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

;; Swap c-x and c-u.  This is useful for dvorak layout since u is
;; on the home row and x is difficult to reach
(define-key key-translation-map (kbd "C-u") (kbd "C-x"))
(define-key key-translation-map (kbd "C-;") (kbd "C-u"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(gac-automatically-push-p t)
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(magit-push-arguments nil)
  '(package-selected-packages
     (quote
       (diminish highlight-indentation git-auto-commit-mode zeal-at-point yasnippet-bundle yasnippet yascroll yard-mode yaml-mode web-mode visible-mark use-package undo-tree tern-auto-complete smart-mode-line smart-comment scss-mode rubocop rspec-mode robe rainbow-identifiers rainbow-delimiters python-mode package-lint multiple-cursors markdown-mode+ magit load-dir kite json-mode ivy-hydra ivy-dired-history guide-key golden-ratio gitlab flyspell-correct-ivy flycheck expand-region eslint-fix elm-mode editorconfig dumb-jump dockerfile-mode diredful dired-open dired-k cpanfile-mode counsel-projectile color-theme-sanityinc-solarized chruby bitbucket auctex anzu ac-ispell ac-emoji ac-emmet)))
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tdd-test-function (smart-compile))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

;; (set-frame-font "Cousine-13" nil t)
;;(set-frame-font "Source Code Pro-13" nil t)
;; (set-frame-font "DejaVu Sans Mono-12" nil t)
;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa

;; load manually installed packages
;; (add-to-list 'load-path "~/.emacs.d/manual/")

;; (setq load-dir-recursive t)
;; (load-dir-one "~/.emacs.d/init.d")
;; (load-dirs-reload)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "monospace" :slant normal :weight normal :height 200 :width normal)))))


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(elpa-install 'load-dir)
(require 'load-dir)
(load-dir-one "~/.emacs.d/manual/")
(load-dir-one "~/.emacs.d/functions")
(setq load-dirs t)
