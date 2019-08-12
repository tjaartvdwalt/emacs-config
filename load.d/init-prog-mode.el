(use-package prog-mode
  :hook (prog-mode . (lambda ()
                       (setq-default tab-width 4)
                       (setq tab-width 4))))
