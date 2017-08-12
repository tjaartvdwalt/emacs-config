(use-package counsel-projectile :ensure t
  :bind ("C-c p p" . counsel-projectile)
  :init
  (setq counsel-projectile-drop-to-switch-project-binding "C-c s p")
  (counsel-projectile-on))
