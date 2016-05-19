(req-package viking-mode
  :config(progn
           (viking-global-mode)
                        (global-unset-key (kbd "C-k"))
 (global-set-key (kbd "C-k")   'viking-kill-thing-at-point)))
