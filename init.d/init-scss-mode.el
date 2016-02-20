(req-package scss-mode
  :config(progn
           (setq css-indent-offset 2)
           (flycheck-add-mode 'scss 'scss-mode)

           (add-hook 'scss-mode-hook
              (add-hook 'after-save-hook 'standardfmt t t))))

