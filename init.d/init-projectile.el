(req-package projectile
  :config
  (progn
    (projectile-global-mode +1)
    (setq projectile-enable-caching t)
    ;; (setq projectile-switch-project-action 'projectile-dired)
    ))
