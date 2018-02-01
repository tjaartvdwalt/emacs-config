;; custom snippets go in ~/.emac.d/snippets

;; (use-package yasnippet-bundle)

(use-package yasnippet
  :delight
  :bind(:map yas-minor-mode-map ("TAB" . nil))
  :config
  (yas/load-directory "~/.emacs.d/snippets"))
  ;; :bind(:map yas-minor-mode-map ("TAB" . nil)))
