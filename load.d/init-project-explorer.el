(use-package project-explorer
  :bind (("C-\\" . project-explorer-toggle))
  :config
  (progn
    (setq pe/side 'right)
    (setq pe/width 50)))
