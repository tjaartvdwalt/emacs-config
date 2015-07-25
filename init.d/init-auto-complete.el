(req-package auto-complete
  :config (progn
            (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers))
            (ac-set-trigger-key "TAB")
            (global-auto-complete-mode 1)
            (setq ac-auto-start t)))
