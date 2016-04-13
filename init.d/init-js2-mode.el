(req-package js2-mode
  config(progn

          (add-hook 'js2-mode-hook (lambda () (flycheck-mode 1)))
          ))
