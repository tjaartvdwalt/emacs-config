(req-package persp-mode
  :config(
          progn
             (add-hook 'after-init-hook '(lambda () (persp-mode 1)))))
