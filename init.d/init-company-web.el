(req-package company-web
  :require (company)
  
  :init(
        (add-to-list 'company-backends 'company-web-html)
        (add-to-list 'company-backends 'company-web-jade)
        (add-to-list 'company-backends 'company-web-slim)))
