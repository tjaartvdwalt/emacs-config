(use-package smart-shift
  :bind (("C-c <left>" . smart-shift-left)
          ("C-c <right>" . smart-shift-right)
          ("C-c <up>" . smart-shift-up)
          ("C-c <down>" . smart-shift-down))
  :config
  (global-smart-shift-mode 1))
