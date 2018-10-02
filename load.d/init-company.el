(use-package company
  :bind (("C-=" . company-other-backend))

  :config
  (global-company-mode)
  (setq company-idle-delay 0)
  (add-to-list 'company-backends 'company-ispell))

(use-package company-web
  :config
  (add-to-list 'company-backends '(company-web-html)))

(use-package company-jedi
  :config
  (add-to-list 'company-backends '(company-jedi)))

(use-package company-tern
  :config
  (add-to-list 'company-backends 'company-tern))


(use-package company-ansible
  :config
  (add-to-list 'company-backends 'company-ansible))
