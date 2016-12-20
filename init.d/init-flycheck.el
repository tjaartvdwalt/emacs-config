(req-package flycheck
  :require (flycheck-flow)
  :diminish flycheck-mode
  :config(progn
           
           (add-hook 'after-init-hook 'global-flycheck-mode)

           ;; set javascript standard checekr as default
           (setq-default flycheck-disabled-checkers
                         (append flycheck-disabled-checkers
                                 '(javascript-jshint)))
  ))



