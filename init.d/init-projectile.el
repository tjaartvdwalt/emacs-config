(req-package projectile
  :diminish projectile-mode
  :config
  (progn
    (projectile-global-mode +1)
    (setq projectile-indexing-method 'native)
    (setq projectile-enable-caching t)
    ;; (setq projectile-switch-project-action 'projectile-dired)
    ))
