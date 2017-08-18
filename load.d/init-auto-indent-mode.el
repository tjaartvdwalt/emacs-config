(use-package auto-indent-mode
  :config
  (add-hook 'prog-mode-hook
          (lambda ()
      (add-hook 'after-save-hook 'indent-whole-buffer t t))))
