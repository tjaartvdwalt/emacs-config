(use-package flycheck
  :delight
                                        ;  :ensure flycheck-pycheckers
  ;; :hook (flycheck-mode-hook . flycheck-pycheckers-setup)
  :config
  (global-flycheck-mode 1)
  (use-package flycheck-pycheckers
    ;; :hook (flycheck-mode-hook . flycheck-pycheckers-setup)
    :config
    ;; (with-eval-after-load 'flycheck
    ;;   (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))
    ;; (add-hook 'flycheck-mode-hook 'flycheck-pycheckers-setup)

    )

  (add-hook 'after-init-hook 'global-flycheck-mode)
  (add-hook 'javascript-mode-hook 'flycheck-mode)
  ;; (add-hook 'flycheck-mode-hook 'flycheck-pycheckers-setup)
  ;; (setq flycheck-flake8-maximum-line-length 80)
  ;; set javascript standard checekr as default
  (setq-default flycheck-disabled-checkers
    (append flycheck-disabled-checkers
      '(javascript-jshint))))
