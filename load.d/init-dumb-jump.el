(use-package dumb-jump
  :hook (prog-mode . dumb-jump-mode)
  :bind (("C-M-g" . dumb-jump-go)
          ("C-M-y" . dumb-jump-back))
  :config (setq dumb-jump-selector 'ivy))
