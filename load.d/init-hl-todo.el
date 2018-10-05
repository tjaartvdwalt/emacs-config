(use-package hl-todo
  ;; :bind (:map hl-todo-mode-map
  ;;         ("M-n" . hl-todo-previous)
  ;;         ("M-p" . hl-todo-next))
  ;; :bind (:map prog-mode-map
  ;;         ("C-M-g" . dumb-jump-go)
  ;;         ("C-M-c" . dumb-jump-back))

  :config
  (define-key hl-todo-mode-map (kbd "M-p") 'hl-todo-previous)
  (define-key hl-todo-mode-map (kbd "M-n") 'hl-todo-next)
  (global-hl-todo-mode))
