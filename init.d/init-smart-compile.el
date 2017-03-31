(use-package smart-compile
         :config (progn
                   (add-to-list 'smart-compile-alist
                                ;; assumes a properly configured npm project
                                '("\\.yml\\'"      . "js-yaml")
                                '("\\.js[x]*\\'"      . "npm test"))))
