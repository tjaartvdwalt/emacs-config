(use-package treemacs
  :bind (("C-." . treemacs-toggle))
  :config
  (treemacs-git-mode 'extended)
  (setq treemacs-show-hidden-files nil))

(use-package treemacs-projectile)
