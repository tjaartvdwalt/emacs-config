(req-package scss-mode
  :config(progn
           (setq css-indent-offset 2)
(add-hook 'scss-mode-hook
              (add-hook 'after-save-hook 'standardfmt t t))

           ;; (flycheck-add-mode 'scss-lint 'scss-mode)
           ))

