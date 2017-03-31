(use-package tdd
  :config
  (progn
    (add-hook 'prog-mode-hook (lambda () (tdd-mode t)))
    (custom-set-variables
     '(tdd-test-function (smarter-compile))))) 
