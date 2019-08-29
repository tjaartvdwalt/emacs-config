(use-package lsp-mode
  :hook ((prog-mode . lsp-deferred)
		 (web-mode . lsp-deferred))
  :commands lsp
  :config
  (setq lsp-auto-guess-root t)
  (setq lsp-enable-snippet t)
  )

(use-package lsp-vue
  )
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
