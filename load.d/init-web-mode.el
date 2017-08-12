(use-package web-mode
  ;; :require (yasnippet flycheck auto-complete)
  :mode "\\.html?\\"
  :config
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)

  ;; add extensions to mode list
  ;; (add-to-list 'ac-modes 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))


  ;; (setq web-mode-ac-sources-alist
  ;;       '(("html" . (ac-source-emmet-html-aliases ac-source-emmet-html-snippets))
  ;;         ("css" . (ac-source-css-property ac-source-emmet-css-snippets))))

  ;; (add-hook 'web-mode-before-auto-complete-hooks
  ;;           '(lambda ()
  ;;              (let ((web-mode-cur-language
  ;;                     (web-mode-language-at-pos)))
  ;;                (if (string= web-mode-cur-language "css")
  ;;                    (setq emmet-use-css-transform t)
  ;;                  (setq emmet-use-css-transform nil)))))


  (add-hook 'web-mode-before-auto-complete-hooks
            '(lambda ()
               (let ((web-mode-cur-language
                      (web-mode-language-at-pos)))
                 (if (string= web-mode-cur-language "html")
                     (yas-activate-extra-mode 'html-mode))
                 ;; (yas-deactivate-extra-mode 'php-mode))
                 (if (string= web-mode-cur-language "css")
                     (setq emmet-use-css-transform t)
                   (setq emmet-use-css-transform nil))
                 )))

  ;; (setq web-mode-ac-sources-alist
  ;;       '(("php" . (ac-source-php-auto-yasnippets ac-source-yasnippet))
  ;;         ("html" . (ac-source-emmet-html-aliases ac-source-emmet-html-snippets))
  ;;         ("css" . (ac-source-css-property))))

  ;; (add-hook 'web-mode-hook
  ;;           '(lambda ()
  ;;             (add-hook 'after-save-hook (message "after save hook") t t)))
  ;; (add-hook 'web-mode-hook
  ;;           '(lambda ()
  ;;              (yas-activate-extra-mode 'html-mode)))

  ;; (add-hook 'web-mode-hook
  ;;           #'(lambda ()
  ;;               (yas-activate-extra-mode 'css-mode)))

  ;; Install: pacaur -S tidyhtml
  (flycheck-add-mode 'html-tidy 'web-mode))

;; Install: pacaur -S csslint
;; (flycheck-add-mode 'scss 'web-mode)
