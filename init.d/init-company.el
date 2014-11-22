;;; package --- summary
;;; Commentary: 
;;; Code:

(req-package company
  :commands (company-backends company-math)
  :bind ("M-," . company-complete)
  :init
    (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)
;;; init-company ends here
