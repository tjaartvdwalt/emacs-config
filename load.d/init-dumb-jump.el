(use-package dumb-jump
  :ensure
  :bind (:map prog-mode-map
          ("C-M-g" . dumb-jump-go)
          ("C-M-c" . dumb-jump-back))
  :config (setq dumb-jump-selector 'ivy))
