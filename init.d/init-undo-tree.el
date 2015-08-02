(req-package undo-tree
  ;; :bind (("M-/" . undo-tree-redo)
  ;;        ("C-x u" . undo-tree-visualize))
  :diminish undo-tree-mode
  :config (progn
            (global-unset-key (kbd "M-/"))
            (global-set-key "\M-/" 'undo-tree-redo)
            (global-set-key "\C-xu" 'undo-tree-visualize)
            (global-undo-tree-mode 1)))
