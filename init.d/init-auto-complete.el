(req-package auto-complete
  :require (yasnippet)
  :config (progn
            (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers ac-source-yasnippet))
            (global-auto-complete-mode 1)
            (setq ac-auto-start t)))
