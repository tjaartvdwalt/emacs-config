(use-package lsp-mode
  :hook ((prog-mode . lsp-deferred)
		 (web-mode . lsp-deferred))
  :commands lsp
  :config (progn
            (setq lsp-auto-configure t)
			(setq lsp-auto-guess-root t)
			(setq lsp-enable-snippet t)))

(use-package lsp-java)
