;; custom snippets go in ~/.emac.d/snippets

(use-package yasnippet
  :bind(:map yas-minor-mode-map ("TAB" . nil))
  :config (yas-global-mode 1))
