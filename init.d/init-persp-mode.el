(req-package persp-mode
  :config(
          progn
           (with-eval-after-load "persp-mode-autoloads"
             (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))))
