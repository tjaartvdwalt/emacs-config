(use-package git-commit-insert-issue
  :config(progn
           (add-hook 'git-commit-mode-hook 'git-commit-insert-issue-mode)))
