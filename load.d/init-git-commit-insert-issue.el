;; You need to separately configure Bitbucket Github and Gitlab APIs
(use-package git-commit-insert-issue
  :config(progn
           (add-hook 'git-commit-mode-hook 'git-commit-insert-issue-mode)))
