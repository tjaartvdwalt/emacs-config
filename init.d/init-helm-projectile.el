(req-package  helm-projectile
  :require(projectile)
  :config (progn
            (setq projectile-completion-system 'helm)
            (helm-projectile-on)))
