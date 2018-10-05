(use-package hl-todo
  :config
  (define-key hl-todo-mode-map (kbd "M-p") 'hl-todo-previous)
  (define-key hl-todo-mode-map (kbd "M-n") 'hl-todo-next)
  (global-hl-todo-mode))
