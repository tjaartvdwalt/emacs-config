(req-package ac-emoji
  :require (auto-complete markdown-mode git-commit-mode)
  :config(progn
           (add-hook 'markdown-mode-hook 'ac-emoji-setup)
           (add-hook 'git-commit-mode-hook 'ac-emoji-setup)))
