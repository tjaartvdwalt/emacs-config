(use-package company
  ;; :hook
  ;; (after-init-hook . global-company-mode)
    :bind (("C-=" . company-other-backend))

  :config
  (global-company-mode)
  (setq company-idle-delay 0)
  (add-to-list 'company-backends 'company-ispell))

(use-package company-web
  :config
    (add-to-list 'company-backends '(company-web-html company-yasnippet)))

(use-package company-jedi
:config
(add-to-list 'company-backends '(company-jedi company-files company-yasnippet)))
