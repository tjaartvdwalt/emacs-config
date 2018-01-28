;; you need to install scss lint
;; gem install scss_lint
(use-package scss-mode
  :hook (scss-mode . (add-hook 'after-save-hook 'scssfmt t t))
  :config (flycheck-add-mode 'scss 'scss-mode))
