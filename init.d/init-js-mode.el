(
  :config(progn
          (setq-default flycheck-disabled-checkers
                        (append flycheck-disabled-checkers
                                '(javascript-jshint)))
          (flycheck-add-mode 'javascript-standard 'js-mode)))
