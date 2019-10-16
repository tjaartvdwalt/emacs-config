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

;; Swap c-x and c-u.  This is useful for dvorak layout since u is
;; on the home row and x is difficult to reach
(define-key key-translation-map (kbd "C-u") (kbd "C-x"))
(define-key key-translation-map (kbd "C-;") (kbd "C-u"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(ansi-color-faces-vector
     [default bold shadow italic underline bold bold-italic bold])
  '(ansi-color-names-vector
     (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-dwim-mode t)
 '(browse-url-generic-program "brave")
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
  '(custom-safe-themes
     (quote
       ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "#073642")
 '(font-size--current-size size)
 '(font-size--default-size default-size)
 '(gac-automatically-push-p t)
 '(keep-end-mode t)
 '(magit-push-arguments nil)
  '(package-selected-packages
     (quote
       (spacemacs-theme typescript-mode typescripet-mode lsp-java lsp-vue company-lsp lsp-ui lsp-mode vue-mode tern ranger prog-mode persp-projectile markdown-toc telephone-line markdown-mode-toc format-all project-explorer dimmer beacon smartparens prettier-js blacken elpy forge dart-mode dracula-theme origami evil-nerd-commenter emmet-mode magit counsel company nav eldoc-mode magit-todos hl-todo company-emoji company-box company-ansible company-tern company-jedi company-web flycheck-elm indium eslintd-fix graphviz-dot-mode smart-shift smart-mode-line-powerline-theme flycheck-pycheckers yas-minor-mode ac-php ede-php-autoload-composer-installers ede-php-autoload airline-themes powerline treemacs-projectile treemacs git-commit-insert-issue magit-imerge gitignore-mode gitconfig-mode gitattributes-mode git-gutter dired-sidebar php-mode puppet-mode direnv fill-column-indicator init-fill-column-indicator smart-tab visual-regexp ansible zeal-at-point yasnippet-bundle yasnippet yascroll yard-mode yaml-mode web-mode visible-mark use-package-ensure-system-package undo-tree tox tern-auto-complete sphinx-doc smart-mode-line smart-comment scss-mode rubocop rspec-mode robe rainbow-identifiers rainbow-delimiters python-mode pydoc py-isort py-autopep8 package-lint multiple-cursors markdown-mode+ magit-svn magit-annex load-dir kite json-mode jedi ivy-hydra ivy-dired-history highlight-indentation guide-key golden-ratio gitlab gitconfig git-auto-commit-mode flyspell-correct-ivy flycheck expand-region eslint-fix elm-mode editorconfig dumb-jump dockerfile-mode diredful dired-open dired-k delight cpanfile-mode counsel-projectile color-theme-sanityinc-solarized chruby bitbucket auctex anzu ansible-doc ac-ispell ac-emoji ac-emmet)))
 '(persp-nil-name "none")
 '(rails-ws:default-server-type "webrick")
  '(safe-local-variable-values
     (quote
       ((elm-package-json . "elm.json")
         (elm-compile-arguments "--output=elm.js" "--debug")
         (elm-reactor-arguments "--port" "8000")
         (tox-use-all-dot-style . t)
         (tox-default-env . "py36"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tdd-test-function (smart-compile))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-annotate-background nil)
  '(vc-annotate-color-map
     (quote
       ((20 . "#dc322f")
         (40 . "#cb4b16")
         (60 . "#b58900")
         (80 . "#859900")
         (100 . "#2aa198")
         (120 . "#268bd2")
         (140 . "#d33682")
         (160 . "#6c71c4")
         (180 . "#dc322f")
         (200 . "#cb4b16")
         (220 . "#b58900")
         (240 . "#859900")
         (260 . "#2aa198")
         (280 . "#268bd2")
         (300 . "#d33682")
         (320 . "#6c71c4")
         (340 . "#dc322f")
         (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))

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
 )

(add-to-list 'default-frame-alist '(font . "monospace"))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; use-package deps
(elpa-install 'bind-key)
(require 'bind-key)
(elpa-install 'delight)
(require 'delight)
(elpa-install 'use-package-ensure-system-package)
(require 'use-package-ensure-system-package)

(elpa-install 'load-dir)
(require 'load-dir)
(load-dir-one "~/.emacs.d/manual/")
(load-dir-one "~/.emacs.d/functions")
;; (load-dir-one "~/emacs-sfdx")
(setq load-dirs t)
