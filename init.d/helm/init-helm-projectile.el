(use-package  helm-projectile
  ;; :require(projectile)

  :config (progn
            (setq projectile-completion-system 'helm)
            (helm-projectile-on)
            ;; (setq projectile-switch-project-action 'projectile-find-file-dwim)
            (setq projectile-switch-project-action 'projectile-dired)
            (setq projectile-find-dir-includes-top-level t)))
