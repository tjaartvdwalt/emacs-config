(req-package smart-mode-line
  :config (progn
	    ;; (setq sml/no-confirm-load-theme t)
            ;; (setq sml/name-width 8)
            (sml/apply-theme 'dark) 
            (sml/setup)
            ;; (setq sml/mode-width "full")
            )
  :init (progn
         (sml/setup))
  )
