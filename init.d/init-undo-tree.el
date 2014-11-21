(req-package undo-tree
  ;; :bind (("M-/" . undo-tree-redo)
  ;;        ("C-x u" . undo-tree-visualize))
 :init (progn
        (global-unset-key (kbd "M-/"))
          (global-set-key "\M-/" 'undo-tree-redo)
          (global-set-key "\C-xu" 'undo-tree-visualize)
          ;; (global-undo-tree-mode)
          (message "Undo tree")
          ))

