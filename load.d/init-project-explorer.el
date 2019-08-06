(use-package project-explorer
  :bind (("C-\\" . project-explorer-toggle))
  :config
  (progn
    (setq pe/side "left")
    (setq pe/width 50)))
