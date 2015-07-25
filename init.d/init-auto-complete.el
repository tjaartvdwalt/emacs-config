(req-package auto-complete
  :config (progn
            (auto-complete-mode t)
            (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers ac-source-yasnippet))
            (ac-set-trigger-key "TAB")
            (setq ac-auto-start t)))
