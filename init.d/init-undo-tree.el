(req-package undo-tree
 :bind (("M-/" . undo-tree-redo) ("C-x u" . undo-tree-visualize))
 :init (progn
        (global-unset-key (kbd "M-/"))
        (global-undo-tree-mode)
       ))

