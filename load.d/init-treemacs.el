(use-package treemacs
  :bind (("C-." . treemacs-projectile-toggle))
  :config
  (treemacs-git-mode 'extended))

(use-package treemacs-projectile)
