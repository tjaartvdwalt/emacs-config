(use-package undo-tree
  :bind (("M-/" . nil)
         ("M-/" . undo-tree-redo)
         ("C-x u" . undo-tree-visualize))
  :diminish undo-tree-mode
  :config (global-undo-tree-mode 1))
