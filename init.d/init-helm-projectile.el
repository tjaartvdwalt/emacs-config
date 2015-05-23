(req-package  helm-projectile
  :config (progn
            (setq projectile-completion-system 'helm)
             (helm-projectile-on)))
