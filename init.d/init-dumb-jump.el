(use-package dumb-jump
  :config (progn
            (add-hook 'prog-mode-hook #'dumb-jump-mode)
            (setq dumb-jump-selector 'ivy))
  :ensure)
