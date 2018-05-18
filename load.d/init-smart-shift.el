(use-package smart-shift
  :bind (("C-M <left>" . smart-shift-left)
          ("C-M <right>" . smart-shift-right)
          ("C-M <up>" . smart-shift-up)
          ("C-M <down>" . smart-shift-down))
  :config
  (global-smart-shift-mode 1))
