(req-package projectile
  :config
  (progn
    (projectile-global-mode 1)
    (setq projectile-switch-project-action 'projectile-dired)))
