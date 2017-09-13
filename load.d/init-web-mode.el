(use-package web-mode
  ;; :require (yasnippet flycheck auto-complete)
  :mode "\\.[agj]sp\\|\\.as[cp]x\\|\\.css\\|\\.djhtml\\|\\.erb\\|\\.hbs\\|\\.html?\\|\\.mustache\\|\\.phtml\\|\\.tag\\'"
  :config
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)

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

  ;; Install: pacaur -S tidyhtml
  (flycheck-add-mode 'html-tidy 'web-mode))

(use-package emmet-mode
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

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


;; Install: pacaur -S csslint
;; (flycheck-add-mode 'scss 'web-mode)
