(req-package sr-speedbar
  :bind (("C-c l l" . sr-speedbar-open)
         ("C-c l r" . sr-speedbar-refresh-toggle)
         ("C-c l s" . sr-speedbar-select-window))
  :config(progn (setq speedbar-use-images nil)))
