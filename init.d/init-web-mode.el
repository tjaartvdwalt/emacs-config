(req-package web-mode
  :requires (yasnippet flycheck)
  :config
  (progn
    (setq web-mode-enable-css-colorization t)
    (setq web-mode-enable-auto-pairing t)
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-enable-current-column-highlight t)
    
    ;; add extensions to mode list
    (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))

    (add-hook 'web-mode-hook
              #'(lambda ()
                  (yas-activate-extra-mode 'html-mode)))

    (add-hook 'web-mode-hook
              #'(lambda ()
                  (yas-activate-extra-mode 'css-mode)))

    ;; Install: pacaur -S tidyhtml
    (flycheck-add-mode 'html-tidy 'web-mode)
    ;; Install: pacaur -S csslint
    (flycheck-add-mode 'scss 'web-mode)))
