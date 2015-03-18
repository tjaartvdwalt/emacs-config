(req-package ediff
  :config(progn
           (setq ediff-window-setup-function 'ediff-setup-windows-plain)
           (setq ediff-split-window-function (if (> (frame-width) 150)
                                          'split-window-horizontally
                                        'split-window-vertically))))
