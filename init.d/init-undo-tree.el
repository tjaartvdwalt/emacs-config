(req-package undo-tree
 :bind ("M-/" . undo-tree-redo)
 :init (progn
        (global-unset-key (kbd "M-/"))
        (global-undo-tree-mode)
       ))

