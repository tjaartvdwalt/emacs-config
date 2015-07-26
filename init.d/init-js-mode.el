(req-package js-mode
  :config(

          (setq-default flycheck-disabled-checkers
                        (append flycheck-disabled-checkers
                                '(javascript-jshint)))

          ;; use eslint with web-mode for jsx files
          (flycheck-add-mode 'javascript-standard 'js-mode)))
