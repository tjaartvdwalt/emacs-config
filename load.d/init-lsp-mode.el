(use-package lsp-mode
  :bind (("M-C-r" . lsp-rename))
  :hook ((prog-mode . lsp-deferred)
		 (web-mode . lsp-deferred))
  :commands lsp
  :config (progn
            (setq lsp-auto-configure t)
			(setq lsp-auto-guess-root t)
			(setq lsp-enable-snippet t)))

(use-package lsp-java)
(use-package lsp-ui
  :config
  (setq lsp-prefer-flymake nil))
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1))
(use-package lsp-ivy)
(use-package lsp-origami
:hook((origami-mode . lsp-origami-mode)))
