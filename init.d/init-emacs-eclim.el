(req-package eclim
  :ensure emacs-eclim
  :config(progn
           (global-eclim-mode)
           (require 'eclimd)
           (setq eclimd-default-workspace "~/workspace")))
