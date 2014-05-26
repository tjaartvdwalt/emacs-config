;;; package --- summary
;;; Commentary: 
;;; Code:

(req-package company
  :commands (company-backends)
  :bind ("M-," . helm-company)
  :init
    (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)
;;; init-company ends here
