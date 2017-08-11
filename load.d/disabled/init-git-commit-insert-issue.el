;; for development, use my local repos

(load-dir-one "/home/tjaart/code/git-commit-insert-issue")

(add-hook 'git-commit-mode-hook 'git-commit-insert-issue-mode)

;; (use-package git-commit-insert-issue
;;   :config(progn
;;            (add-hook 'git-commit-mode-hook 'git-commit-insert-issue-mode)))
