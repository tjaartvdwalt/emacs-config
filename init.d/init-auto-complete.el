(req-package auto-complete
  :require (yasnippet)
  :config (progn
            (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-imenu ac-source-words-in-same-mode-buffers))
            
            (global-auto-complete-mode 1)
            (setq ac-auto-start t)))
