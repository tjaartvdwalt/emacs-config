;; custom snippets go in ~/.emac.d/snippets

(req-package yasnippet
  :require (auto-yasnippet)

  ;; :init
  ;; (progn
  ;;   (setq yas-prompt-functions '(yas-ido-prompt)))
  :config
    (yas-global-mode 1))
