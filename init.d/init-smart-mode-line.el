(req-package smart-mode-line
  :disabled
  :config (progn
	    (setq sml/no-confirm-load-theme t)
            (sml/setup)
            (setq sml/name-width 8)
            (sml/apply-theme 'respectful) 
            (setq sml/mode-width "full")))
