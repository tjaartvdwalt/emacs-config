(use-package auto-complete
  :delight
  :init (require 'auto-complete-config)
  :config
  (setq ac-use-fuzzy t)
  (setq-default ac-sources
                '(ac-source-yasnippet
                  ac-source-abbrev
                  ac-source-dictionary
                  ac-source-filename
                  ac-source-words-in-same-mode-buffers))
  (global-auto-complete-mode 1)
  (ac-flyspell-workaround)

  (use-package ac-ispell
    :config
    (ac-ispell-setup)
    (add-hook 'text-mode-hook 'ac-ispell-ac-setup))

  (use-package ac-emoji
    :hook ((markdown-mode . ac-emoji-setup)
            (git-commit-mode . ac-emoji-setup))
    :config
    (add-hook 'markdown-mode-hook 'ac-emoji-setup)
    (add-hook 'git-commit-mode-hook 'ac-emoji-setup))

  (use-package ac-emmet
    :config
    (add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
    (add-hook 'css-mode-hook 'ac-emmet-css-setup)))

;; (setq ac-auto-start nil)
;; (define-key ac-mode-map (kbd "TAB") 'auto-complete)
