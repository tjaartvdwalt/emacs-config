(req-package iedit
  :config(progn
           (global-unset-key (kbd "C-;"))
           (global-set-key (kbd "C-,") 'iedit-mode)))
