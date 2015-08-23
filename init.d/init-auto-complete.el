(req-package auto-complete
  :defer t
  :diminish auto-complete-mode
  :require (yasnippet auto-complete-config)
  :config (progn
            (setq ac-use-fuzzy t)
            (setq-default ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-dictionary ac-source-filename ac-source-words-in-same-mode-buffers))
            (global-auto-complete-mode 1)
            (setq ac-auto-start t)
            (ac-flyspell-workaround)
            (define-key ac-mode-map (kbd "TAB") 'auto-complete)))
