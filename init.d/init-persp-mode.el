(req-package persp-mode
  :config(
          progn
          (with-eval-after-load "persp-mode-autoloads"
  (setq wg-morph-on nil) ;; switch off animation
  (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))))
