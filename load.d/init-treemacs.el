(use-package treemacs
  :bind (("C-." . treemacs-projectile-toggle))
  :config
  (treemacs-git-mode 'extended)
  (setq treemacs-show-hidden-files f))

(use-package treemacs-projectile)
