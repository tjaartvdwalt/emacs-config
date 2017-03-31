(use-package smart-compile
  ;; :bind (("C-x c" . smart-compile)
         :config (progn
                   (add-to-list 'smart-compile-alist
                                '("\\.js[x]*\\'"      . "npm test"))))
