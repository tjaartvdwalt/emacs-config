(use-package smart-compile
         :config (progn
                   (add-to-list 'smart-compile-alist
                                '("\\.js[x]*\\'"      . "npm test"))))
