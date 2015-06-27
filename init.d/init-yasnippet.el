;; custom snippets go in ~/.emac.d/snippets

(req-package yasnippet
  :require (auto-yasnippet company)

  ;; :init
  ;; (progn
  ;;   (setq yas-prompt-functions '(yas-ido-prompt)))
  :config
  (progn
    (add-to-list 'company-backends 'company-yasnippet)
        (add-hook 'web-mode-hook
          '(lambda ()
              (yas-activate-extra-mode 'html-mode)))

    
    (yas-global-mode 1)))
