(req-package ac-emoji
  :require (auto-complete)
  :config(progn
           (add-hook 'markdown-mode-hook 'ac-emoji-setup)
           (add-hook 'git-commit-mode-hook 'ac-emoji-setup)))
