(req-package persp-mode
  :config((with-eval-after-load "persp-mode-autoloads"
  (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))))
