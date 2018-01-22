(use-package flycheck
  :diminish flycheck-mode
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (add-hook 'javascript-mode-hook 'flycheck-mode)

  (defcustom 'flycheck-flake8-maximum-line-length 80)
  ;; set javascript standard checekr as default
  (setq-default flycheck-disabled-checkers
    (append flycheck-disabled-checkers
      '(javascript-jshint)))

  (global-flycheck-mode))
