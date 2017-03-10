(use-package helm-open-github
      :bind (("C-c h h f" . helm-open-github-from-file)
             ("C-c h h c" . helm-open-github-from-commit)
             ("C-c h h i" . helm-open-github-from-issues)
             ("C-c h h p" . helm-open-github-from-pull-requests)))
