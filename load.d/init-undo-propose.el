(use-package undo-propose
  :delight
  :bind (("C-/" . undo-propose))
  :config
  (setq undo-propose-pop-to-buffer t)
  (setq display-buffer-alist '(("*Undo Propose"
								(display-buffer-reuse-window display-buffer-in-side-window)
								(side . left)))))
