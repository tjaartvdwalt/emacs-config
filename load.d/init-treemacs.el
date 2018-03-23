(use-package treemacs
  :bind (("C-." . treemacs-toggle))
  :config
  (treemacs-git-mode 'extended)
  (treemacs-tag-follow-mode t)
  (setq treemacs-show-hidden-files nil
    treemacs-position t))

(use-package treemacs-projectile)
