(req-package org-page
  :config (progn
            (setq op/repository-directory "~/my-code/my-projects/tjaartvdwalt.github.io")
            (setq op/site-domain "http://tjaartvdwalt.github.io")
            ;; (setq op/repository-org-branch "source")
            ;; (setq op/repository-html-branch "master")
            (setq op/personal-github-link "https://github.com/tjaartvdwalt")
            (setq op/personal-avatar "http://www.gravatar.com/avatar/802e5786235d6cfa93279d29c6626c4c?s=200")
            (setq op/personal-google-analytics-id "UA-63610941-1")
            (setq op/theme 'mdo)
            (setq op/site-main-title "Tjaart's blog")
            (setq op/site-sub-title "A blog about bloggerol")
            (setq op/confound-email t)
            (setq op/category-config-alist
                  (cons '("blog" ;; category name goes here
                          :category-index t)
            op/category-config-alist))
            ))
