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
  (setq lsp-prefer-flymake t))
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1))
