(req-package smart-mode-line
  :config (progn
	    ;; (setq sml/no-confirm-load-theme t)
            ;; (sml/setup)
            ;; (setq sml/name-width 8)
            (sml/apply-theme 'dark) 
            ;; (setq sml/mode-width "full")
            )
:init (sml/setup)
  )
