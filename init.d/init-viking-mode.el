(req-package viking-mode
  :config(progn
           (define-key viking-mode-map (kbd "C-k") 'viking-kill-thing-at-point)))
