(req-package smart-mode-line
  :config (progn
            (sml/setup)
            (setq sml/name-width 8)
            (sml/apply-theme 'respectful) 
            (setq sml/mode-width "full")))
