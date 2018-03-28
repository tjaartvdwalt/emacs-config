(use-package treemacs
  :bind (("C-." . treemacs-toggle-projectile))
  :config
  (treemacs-git-mode 'extended)
  ;;  (treemacs-follow-mode t)
  (treemacs-tag-follow-mode t)
  (setq-local imenu-create-index-function #'ggtags-build-imenu-index)
  (setq treemacs-show-hidden-files nil
    treemacs-position 'left))

(use-package treemacs-projectile)
