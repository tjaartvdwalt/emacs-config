(use-package auto-complete
  :disabled
  :delight auto-complete-mode yas/minor-mode
  :init (require 'auto-complete-config)
  :config
  (setq ac-use-fuzzy t)
  (setq ac-auto-start 4)
  (setq ac-dwim t)
  (setq-default ac-sources
    '(ac-source-yasnippet
       ac-source-abbrev
       ac-source-dictionary
       ac-source-filename
       ac-source-words-in-same-mode-buffers))
  (global-auto-complete-mode 1)
  (ac-flyspell-workaround)

  (use-package ac-ispell
    :disable
    :config
    (ac-ispell-setup)
    (add-hook 'text-mode-hook 'ac-ispell-ac-setup))

  (use-package ac-emoji
    :disable
    :hook ((markdown-mode . ac-emoji-setup)
            (git-commit-mode . ac-emoji-setup)))

  (use-package ac-emmet
    :disable
    :hook ((sgml-mode . ac-emmet-html-setup)
            (css-mode . ac-emmet-css-setup))))

;; (setq ac-auto-start nil)
;; (define-key ac-mode-map (kbd "TAB") 'auto-complete)
