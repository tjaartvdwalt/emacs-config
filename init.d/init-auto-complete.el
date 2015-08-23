(req-package auto-complete
  :diminish auto-complete-mode
  :require (yasnippet auto-complete-config)
  :config (progn
            (setq ac-use-fuzzy t)
            (setq-default ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers ac-emoji))
            (global-auto-complete-mode 1)
            (setq ac-auto-start t)
            (define-key ac-mode-map (kbd "TAB") 'auto-complete)))
