(use-package tdd
  :config
  (progn
    (add-hook 'prog-mode-hook #'tdd-mode t)
    (custom-set-variables
     '(tdd-test-function (smart-compile))))) 
