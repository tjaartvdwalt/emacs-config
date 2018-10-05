(use-package hl-todo
  (:map ivy-mode-map
    ("M-n" . hl-todo-previous)
    ("M-p" . hl-todo-next))

  :config
  (global-hl-todo-mode))
