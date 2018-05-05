(use-package php-mode
  :config
  (use-package ac-php)
  (use-package ede-php-autoload
    :bind (:map php-mode-map
            ("C-M-g" . ac-php-find-symbol-at-point)
            ("C-M-p" . ac-php-location-stack-back))

    :config
    (add-hook 'php-mode-hook '(lambda ()
                                (setq ac-sources  '(ac-source-php ) )
                                (define-key php-mode-map  (kbd "C-M-g") 'ac-php-find-symbol-at-point)   ;goto define
                                (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
                                ))

    )

  (use-package ede-php-autoload-composer-installers)
  (add-hook 'php-mode-hook #'ede-php-autoload-mode))
