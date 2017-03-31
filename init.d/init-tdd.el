(use-package tdd
  :config
  (progn
    (add-hook 'prog-mode-hook (lambda () (magit-filenotify-mode t)))
    (custom-set-variables
     '(tdd-test-function (smart-compile))))) 
