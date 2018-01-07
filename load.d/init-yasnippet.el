;; custom snippets go in ~/.emac.d/snippets

(use-package yasnippet-bundle)

(use-package yasnippet
  :diminish yas-minor-mode
  :bind(:map yas-minor-mode-map ("TAB" . nil))
  :config (yas-global-mode 1))
