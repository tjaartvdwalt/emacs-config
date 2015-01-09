(req-package sr-speedbar
  :bind (("C-c l l" . sr-speedbar-toggle)
         ("C-c l r" . sr-speedbar-refresh-toggle)
         ("C-c l s" . sr-speedbar-select-window))
  :config((setq speedbar-use-images nil)))
