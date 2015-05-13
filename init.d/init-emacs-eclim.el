(req-package eclim
  :ensure emacs-eclim
  :require(company company-emacs-eclim)
  :config(progn
           (company-emacs-eclim-setup)))

