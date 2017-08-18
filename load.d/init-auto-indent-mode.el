(use-package auto-indent-mode
  :config
  (add-hook 'prog-mode-hook
       (lambda ()
         (add-hook 'before-save-hook 'auto-indent-mode t t))))
