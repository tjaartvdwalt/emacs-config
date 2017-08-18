(add-hook 'prog-mode-hook
  (lambda ()
    (add-hook 'before-save-hook 'indent-whole-buffer t t)))
