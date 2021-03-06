(use-package smart-compile
  :config (progn
            (add-to-list 'smart-compile-alist
                         ;; npm install -g jsonlint
                         '("\\.json\\'"        . "js-yaml %F"))
            (add-to-list 'smart-compile-alist
                         ;; npm install -g js-yaml
                         '("\\.y[a]*ml\\'"     . "js-yaml %F"))
            (add-to-list 'smart-compile-alist
                         ;; assumes a properly configured npm project, with test script
                         '("\\.js[x]*\\'"      . "npm test"))))
