(req-package eclim
  :ensure emacs-eclim
  :require(company company-emacs-eclim)
  :config(progn
           (global-eclim-mode)
           (company-emacs-eclim-setup)
           (require 'eclimd)
           (eclimd-default-workspace)))

