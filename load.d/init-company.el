(use-package company
  ;; :bind (("M-<tab>" . company-other-backend))
  ;; :delight
  :config
  (global-company-mode)
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  (add-to-list 'company-backends 'company-ispell 'company-yasnippet 'company-elm))

;; ;; Box frontend
;; (use-package company-box
;;   :delight
;;   :hook (company-mode . company-box-mode))

;; Backends
(use-package company-web
  :config
  (add-to-list 'company-backends 'company-web-html))

(use-package company-jedi
  :config
  (add-to-list 'company-backends 'company-jedi))

(use-package company-tern
  :config
  (add-to-list 'company-backends 'company-tern))


(use-package company-ansible
  :config
  (add-to-list 'company-backends 'company-ansible))

(use-package  company-emoji
  :config
  (add-to-list 'company-backends 'company-emoji))
