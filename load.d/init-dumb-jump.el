(use-package dumb-jump

  :bind (("C-M-g" . dumb-jump-go)
          ("C-M-y" . dumb-jump-back))
  :config
  ;; (add-hook 'prog-mode-hook #'dumb-jump-mode)
  (setq dumb-jump-selector 'ivy))
