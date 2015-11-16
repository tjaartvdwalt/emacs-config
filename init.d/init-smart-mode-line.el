(req-package smart-mode-line
  :init (progn
            ;; (setq sml/no-confirm-load-theme t)
            (setq sml/name-width 8)
            (sml/apply-theme 'dark)
            (setq sml/mode-width "full")
            (sml/setup)))
