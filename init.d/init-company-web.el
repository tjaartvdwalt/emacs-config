(req-package company-web
  :require (company)
  
  :config(
        (add-to-list 'company-backends 'company-web-html)
        (add-to-list 'company-backends 'company-web-jade)
        (add-to-list 'company-backends 'company-web-slim)))
