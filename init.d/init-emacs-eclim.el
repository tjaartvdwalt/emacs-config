(req-package eclim
  :ensure emacs-eclim
  :require(company company-emacs-eclim)
  :config(progn
           (global-eclim-mode)
           (require 'eclimd)
           (company-emacs-eclim-setup)))

