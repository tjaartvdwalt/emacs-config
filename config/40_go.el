(elpa-install 'go-mode)
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)

;; company completion for go
(elpa-install 'company-go)
(require 'company-go)
(add-to-list 'company-backends 'company-go)

(define-key go-mode-map (kbd "M-.")
	    'godef-jump)

