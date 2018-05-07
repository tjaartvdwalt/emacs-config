(use-package flycheck
  :delight
                                        ;  :ensure flycheck-pycheckers
  :hook (flycheck-mode-hook . flycheck-pycheckers-setup)
  :config
  (use-package flycheck-pycheckers
  :hook (flycheck-mode-hook . flycheck-pycheckers-setup))
    ;; :config
    ;; (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))

  (add-hook 'after-init-hook 'global-flycheck-mode)
  (add-hook 'javascript-mode-hook 'flycheck-mode)
  ;; (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup)
  (global-flycheck-mode )
  ;; (setq flycheck-flake8-maximum-line-length 80)
  ;; set javascript standard checekr as default
  (setq-default flycheck-disabled-checkers
    (append flycheck-disabled-checkers
      '(javascript-jshint))))
