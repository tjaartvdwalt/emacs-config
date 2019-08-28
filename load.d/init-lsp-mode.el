(use-package lsp-mode
  :hook (prog-mode . lsp-deferred)
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
