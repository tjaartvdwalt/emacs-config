(req-package auto-complete
  :config (progn
            (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers ac-source-yasnippet))
            (setq ac-auto-start t)))
