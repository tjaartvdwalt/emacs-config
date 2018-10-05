(use-package hl-todo
  :map hl-todo-mode-map
  ("M-n" . hl-todo-previous)
  ("M-p" . hl-todo-next)

  :config
  (global-hl-todo-mode))
