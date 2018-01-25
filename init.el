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
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "25c242b3c808f38b0389879b9cba325fb1fa81a0a5e61ac7cae8da9a32e2811b" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "f245c9f24b609b00441a6a336bcc556fe38a6b24bfc0ca4aedd4fe23d858ba31" "b6db49cec08652adf1ff2341ce32c7303be313b0de38c621676122f255ee46db" "3a3917dbcc6571ef3942c2bf4c4240f70b5c4bc0b28192be6d3f9acd83607a24" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "0b6645497e51d80eda1d337d6cabe31814d6c381e69491931a688836c16137ed" "09669536b4a71f409e7e2fd56609cd7f0dff2850d4cbfb43916cc1843c463b80" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(gac-automatically-push-p t)
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(magit-push-arguments nil)
 '(package-selected-packages
   (quote
    (highlight-indentation-mode yasnippet-bundle solarized-theme color-theme-sanityinc-solarized elm-mode zeal-at-point yascroll yard-mode yaml-mode yagist yafolding web-mode visible-mark use-package undo-tree typescript-mode tern-auto-complete tdd sudo-ext smex smart-mode-line-powerline-theme smart-compile smart-comment show-marks shell-switcher scss-mode rubocop rspec-mode robe restclient-helm repo realgud-pry readline-complete rainbow-identifiers rainbow-delimiters python-mode py-isort py-autopep8 powershell pony-mode pkgbuild-mode php-mode password-store package-lint package-build org-present org-page org-gcal org-bullets org-autolist org-ac nhexl-mode mwe-log-commands mocha-snippets markdown-mode+ mark-tools magit-svn magit-annex load-dir kite jss json-mode js-doc jedi jade-mode ivy-hydra ivy-dired-history igrep html-to-markdown helm-themes helm-swoop helm-rubygems-org helm-pydoc helm-projectile helm-open-github helm-mode-manager helm-make helm-helm-commands helm-gtags helm-google helm-gitlab helm-gitignore helm-flyspell helm-flycheck helm-firefox helm-dired-recent-dirs helm-dash helm-commandlinefu helm-c-yasnippet helm-ag haml-mode guide-key gradle-mode golden-ratio go-mode github-issues gitconfig git-auto-commit-mode git-annex gh-md ggtags fuzzy free-keys flyspell-correct-ivy findr expand-region eslint-fix ereader enh-ruby-mode enclose emr elpy electric-case editorconfig easy-kill dumb-jump dockerfile-mode disk discover-my-major diredful dired-toggle-sudo dired-open dired-narrow dired-k dired-imenu dired+ diff-hl cpanfile-mode counsel-projectile comment-dwim-2 command-log-mode column-enforce-mode coffee-mode chruby cdlatex browse-url-dwim bitbucket base16-theme avy auto-indent-mode auctex anzu ansible-doc ansible all-the-icons aggressive-indent ag ace-mc ac-ispell ac-etags ac-emoji ac-emmet)))
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
(add-to-list 'load-path "~/.emacs.d/manual/")

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
(load-dir-one "~/.emacs.d/functions")
(setq load-dirs t)
