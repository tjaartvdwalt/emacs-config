(req-package company-web

  :require (company company-backends web-mode)
  :ensure (company-web-html company-web-jade company-web-slim)

  :config(
          ;; (define-key web-mode-map (kbd "M-,") 'company-web-html)

          ;; (add-hook 'web-mode-hook (lambda ()
          ;;                            (set (make-local-variable 'company-backends) '(company-web-html company-files))
          ;;                            (company-mode t)))
        (add-to-list 'company-backends 'company-web-html)
        (add-to-list 'company-backends 'company-web-jade)
        (add-to-list 'company-backends 'company-web-slim)
        ))
