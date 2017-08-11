;; disable for now!
(use-package tdd
  :config
  (progn
    (add-hook 'prog-mode-hook #'tdd-mode)
    (custom-set-variables
     '(tdd-test-function (smart-compile)))))
