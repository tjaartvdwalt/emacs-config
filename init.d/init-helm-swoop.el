(req-package helm-swoop
  :bind ("C-c h s" . helm-swoop)
  :config (progn        
            (setq helm-swoop-split-direction 'split-window-horizontally)))
