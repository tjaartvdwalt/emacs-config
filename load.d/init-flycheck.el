(use-package flycheck
  :delight
  :ensure flycheck-pycheckers
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (add-hook 'javascript-mode-hook 'flycheck-mode)
  (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup)
  (global-flycheck-mode )
  ;; (setq flycheck-flake8-maximum-line-length 80)
  ;; set javascript standard checekr as default
  (setq-default flycheck-disabled-checkers
    (append flycheck-disabled-checkers
      '(javascript-jshint))))
