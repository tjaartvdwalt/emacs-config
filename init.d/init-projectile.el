(req-package projectile
  :diminish projectile-mode
  :config
  (progn
    (projectile-global-mode +1)
    ;; (setq projectile-indexing-method 'native)
    (setq projectile-enable-caching t)
     (add-to-list 'projectile-other-file-alist '("js" "hbs"))
    ;; (setq projectile-switch-project-action 'projectile-dired)
    ))
