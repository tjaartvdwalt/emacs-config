(use-package smart-compile
         :config (progn
                   (add-to-list 'smart-compile-alist
                                ;; assumes a properly configured npm project
                                '("\\.yml\\'"      . "js-yml")
                                '("\\.js[x]*\\'"      . "npm test"))))
