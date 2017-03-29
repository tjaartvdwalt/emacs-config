;; custom snippets go in ~/.emac.d/snippets

(use-package auto-yasnippet)
(use-package java-yasnippet)
(use-package react-yasnippet)

(use-package yasnippet
  ;; :require (auto-yasnippet java-snippets react-snippets)

  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  )
