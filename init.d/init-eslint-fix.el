(req-package eslint-fix
  :config(progn
             (add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t)))))
