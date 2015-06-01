(req-package org-page
  :config (progn
            (setq op/repository-directory "~/org-page")
            (setq op/site-domain "https://github.com/tjaartvdwalt/org-page-test")
            (setq op/personal-github-link "https://github.com/tjaartvdwalt")
            (setq op/personal-avatar "http://www.gravatar.com/avatar/802e5786235d6cfa93279d29c6626c4c?s=100")
            (setq op/personal-google-analytics-id "UA-63610941-1")
            (setq op/theme-root-directory "~/.emacs.d/elpa/org-page-20150428.525/themes/")
            (setq op/theme 'mdo)
            (setq op/site-main-title "Tjaart's blog")
            (setq op/site-sub-title "A blog about bloggerol")
            (setq op/confound-email t)))
