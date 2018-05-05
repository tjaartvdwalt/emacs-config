(use-package php-mode
  :config
  (use-package ede-php-autoload)
  (use-package ede-php-autoload-composer-installers)
  (add-hook 'php-mode-hook #'ede-php-autoload-mode))
