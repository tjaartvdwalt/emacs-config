(req-package company-web
  :require (company)
  
  :config(
    (add-to-list 'company-backends 'company-web)))
