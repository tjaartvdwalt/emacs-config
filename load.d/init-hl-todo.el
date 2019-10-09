(use-package hl-todo
  :bind (:map hl-todo-mode-map
          ("M-p" . hl-todo-previous)
          ("M-n" . hl-todo-next)))
  :config
  (global-hl-todo-mode))
