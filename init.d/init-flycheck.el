(req-package flycheck
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode)

  ;; set javascript standard as default
  (setq-default flycheck-disabled-checkers
                        (append flycheck-disabled-checkers
                                '(javascript-jshint)))
          (flycheck-add-mode 'javascript-standard 'js-mode))


  )
