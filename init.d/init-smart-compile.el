(use-package smart-compile
         :config (progn
                   (add-to-list 'smart-compile-alist
                                ;; assumes a properly configured npm project
                                '("\\.y[a]*ml\\'"      . "js-yaml")
                                '("\\.js[x]*\\'"      . "npm test"))))
