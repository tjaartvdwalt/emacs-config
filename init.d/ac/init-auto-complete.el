(use-package auto-complete
  :diminish auto-complete-mode
  :init (require 'auto-complete-config)
  :config (progn
            (setq ac-use-fuzzy t)
            (setq-default ac-sources
                          '(ac-source-yasnippet
                            ac-source-abbrev
                            ac-source-dictionary
                            ac-source-filename
                            ac-source-words-in-same-mode-buffers))
            (global-auto-complete-mode 1)
            (ac-flyspell-workaround)))

;; (setq ac-auto-start nil)
;; (define-key ac-mode-map (kbd "TAB") 'auto-complete)
