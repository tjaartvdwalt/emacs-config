(use-package dumb-jump
  :hook (prog-mode . dumb-jump-mode)
    :bind (:map prog-mode-map
            ("C-M-g" . dumb-jump-go)
            ("C-M-p" . dumb-jump-back))
  ;; :bind (("C-M-g" . dumb-jump-go)
  ;;         ("C-M-y" . dumb-jump-back))
  :config (setq dumb-jump-selector 'ivy))
