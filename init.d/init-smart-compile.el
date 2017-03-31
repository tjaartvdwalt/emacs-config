(use-package smart-compile
  :config (progn
            ;; npm install -g jsonlint
            ;; npm install -g js-yaml
            ;; assumes a properly configured npm project, with test script
            (add-to-list 'smart-compile-alist
                         '(("\\.json\\'"        . "js-yaml %f")
                           ("\\.y[a]*ml\\'"     . "js-yaml %f")
                           ("\\.js[x]*\\'"      . "npm test")))))
