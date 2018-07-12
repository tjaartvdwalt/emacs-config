;; ;; custom snippets go in ~/.emac.d/snippets

;; ;; (use-package yasnippet-bundle)

(use-package yasnippet
;;   :delight
;;   :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map [(tab)] nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil))
