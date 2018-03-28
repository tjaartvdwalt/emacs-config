(use-package treemacs
  :bind (("C-." . treemacs-toggle))
  :config
  (treemacs-git-mode 'extended)
  (treemacs-follow-mode t)
  ;; (treemacs-tag-follow-mode t)
  (treemacs-filewatch-mode t)
  (setq-local imenu-create-index-function #'ggtags-build-imenu-index)
  (setq treemacs-show-hidden-files nil
    treemacs-position 'left))

(use-package treemacs-projectile)
