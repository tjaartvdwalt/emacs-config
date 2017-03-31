(use-package tdd
  :config
  (progn
    (add-hook 'js-mode-hook 'tdd-mode)
    (custom-set-variables
     '(tdd-test-function (smart-compile)))))
