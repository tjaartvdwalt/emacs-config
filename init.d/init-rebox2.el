(req-package rebox2
  :bind(("C-c x x" . rebox-dwim)
        ("C-c x c" . rebox-cycle))
  :config(progn((setq rebox-style-loop '(12 21 25 27))))
