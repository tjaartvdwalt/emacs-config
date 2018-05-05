(use-package php-mode
  :config
  (use-package ac-php)
  (use-package ede-php-autoload
    :config
    (add-hook 'php-mode-hook '(lambda ()
                                (setq ac-sources  '(ac-source-php ) )
                                (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
                                (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
                                ))

    )

  (use-package ede-php-autoload-composer-installers)
  (add-hook 'php-mode-hook #'ede-php-autoload-mode))
