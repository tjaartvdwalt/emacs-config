(use-package smart-compile
  :config (progn
            (add-to-list 'smart-compile-alist
                         ;; npm install -g jsonlint
                         '(("\\.json\\'"        . "js-yaml %f")
                           ;; npm install -g js-yaml
                           ("\\.y[a]*ml\\'"     . "js-yaml %f")
                           ;; assumes a properly configured npm project, with test script
                           ("\\.js[x]*\\'"      . "npm test")))))
