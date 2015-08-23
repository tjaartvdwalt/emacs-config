;; custom snippets go in ~/.emac.d/snippets

(req-package yasnippet
  :defer t
  :require (auto-yasnippet)

  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  )
