(use-package php-mode
  ;; :after (auto-complete)
  :config
  ;; (use-package ac-php)
  (use-package ede-php-autoload
     :bind (:map php-mode-map
          ("C-M-g" . ac-php-find-symbol-at-point)
          ("C-M-c" . ac-php-location-stack-back))

    :config
    (add-hook 'php-mode-hook '(lambda ()
                                (setq ac-sources  '(ac-source-php ))))
    )

  (use-package ede-php-autoload-composer-installers)
  (add-hook 'php-mode-hook #'ede-php-autoload-mode))
