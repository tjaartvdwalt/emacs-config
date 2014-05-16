(elpa-install 'company)
(require 'company)

;; install go backend. company backends are defined in init.el
;; (elpa-install 'company-go)
;; (require 'company-go)
;; (add-to-list 'company-backends 'company-go)

(add-hook 'after-init-hook 'global-company-mode)

(global-unset-key (kbd "M-,"))
(global-set-key "\M-," 'company-complete)
