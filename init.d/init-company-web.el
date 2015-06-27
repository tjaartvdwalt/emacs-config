(req-package company-web
  :require (company)
  
  :init(
          (add-hook 'web-mode-hook (lambda ()
                                     (set (make-local-variable 'company-backends)
                                          '(company-web-html company-files))
                                     (company-mode t)))))
