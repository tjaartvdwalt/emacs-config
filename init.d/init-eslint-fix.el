(req-package eslint-fix
  :config(progn
           (eval-after-load 'js-mode
             '(add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))))
