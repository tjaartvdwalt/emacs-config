(req-package tagedit
  :config(progn
           (tagedit-add-paredit-like-keybindings)
           (tagedit-add-experimental-features)
     (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))
