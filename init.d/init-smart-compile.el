(use-package smart-compile
  :bind (("C-x c" . smart-compile)
         :config (progn
                   (setq smart-compile-alist
                         '(("\\.js[x]*\\'"      . "npm test"))))))
