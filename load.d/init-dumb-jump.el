(use-package dumb-jump
  :config
  (add-hook 'prog-mode-hook #'dumb-jump-mode)
  (setq dumb-jump-selector 'ivy))
