(use-package hl-todo
  :hook ((prog-mode . hl-todo-mode))
  :bind (:map hl-todo-mode-map
			  ("M-p" . hl-todo-previous)
			  ("M-n" . hl-todo-next)))
