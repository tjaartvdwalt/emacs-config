(use-package smart-compile
  :bind (("C-c bh" . smart-compile)
  :config (progn
            ;; Set a shortcut for compile
            (global-set-key "\C-xc" 'smart-compile)
            (setq smart-compile-alist '(
                                        ("\\.js[x]*\\'"      . "npm test")
                                        ))))
