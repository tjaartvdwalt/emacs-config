(use-package hl-todo
  :bind (:map hl-todo-mode-map
          ("M-n" . hl-todo-previous)
          ("M-p" . hl-todo-next))
  :bind (:map prog-mode-map
          ("C-M-g" . dumb-jump-go)
          ("C-M-c" . dumb-jump-back))

  :config
  (global-hl-todo-mode))
