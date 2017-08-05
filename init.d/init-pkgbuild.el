(use-package pony-mode
  :config(progn
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
 (setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                               auto-mode-alist))))
