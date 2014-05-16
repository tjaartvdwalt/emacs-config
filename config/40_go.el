(elpa-install 'go-mode)
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)

;; company completion for go
(elpa-install 'company-go)
(require 'company)
(require 'company-go)
(add-to-list 'company-backends 'company-go)


(elpa-install 'go-eldoc)
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(elpa-install 'gotest)
(require 'gotest)

(define-key go-mode-map (kbd "M-.") 'godef-jump)
(define-key go-mode-map (kbd "C-c C-r") 'go-remove-unused-imports)
(define-key go-mode-map (kbd "C-c C-p") 'go-test-current-project)
(define-key go-mode-map (kbd "C-c C-f") 'go-test-current-file)
(define-key go-mode-map (kbd "C-c C-t") 'go-test-current-test)
