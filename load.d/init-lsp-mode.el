(use-package lsp-mode
  :hook (prog-mode . lsp-deferred)
  :commands lsp)

(use-package lsp-vue
  :hook (web-mode . lsp-vue-enable))
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
