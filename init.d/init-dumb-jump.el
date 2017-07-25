(use-package dumb-jump
  ;; :bind (("C-M g" . dumb-jump-go-other-window)
  ;;         ("M-g j" . dumb-jump-go)
  ;;         ("M-g i" . dumb-jump-go-prompt)
  ;;         ("M-g x" . dumb-jump-go-prefer-external)
  ;;         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :config (progn
            (add-hook 'prog-mode-hook #'dumb-jump-mode)
            (setq dumb-jump-selector 'ivy))
  :ensure)
