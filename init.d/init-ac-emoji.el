(req-package ac-emoji
  :config(progn
           (add-hook 'markdown-mode-hook 'ac-emoji-setup)
           (add-hook 'git-commit-mode-hook 'ac-emoji-setup)))
