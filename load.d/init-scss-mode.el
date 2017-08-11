;; you need to install scss lint
;; gem install scss_lint
(use-package scss-mode
  :config(progn
           ;; (setq css-indent-offset 2)
           (flycheck-add-mode 'scss 'scss-mode)

           (add-hook 'scss-mode-hook
              (add-hook 'after-save-hook 'scssfmt t t))))

