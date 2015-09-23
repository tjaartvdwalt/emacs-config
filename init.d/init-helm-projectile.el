(req-package  helm-projectile
  :require(projectile)

  :config (progn
            (setq projectile-completion-system 'helm)
            (helm-projectile-on)
            ;; (setq projectile-switch-project-action 'helm-projectile)
            (setq projectile-switch-project-action 'projectile-find-dir)
            (setq projectile-find-dir-includes-top-level t)))
