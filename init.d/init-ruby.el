;;; package --- summary
;;; Commentary:
;;; Code:

;; ruby end
(req-package ruby-mode
:require (ruby-end rspec-mode inf-ruby robe company company-robe)
:config
(progn
     (add-hook 'ruby-mode 'auto-make-header)
     (add-hook 'ruby-mode-hook 'robe-mode)
     (add-to-list 'company-backends 'company-robe)
     (add-to-list 'auto-mode-alist
               '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
  ))

(provide 'init-ruby)
;;; init-ruby ends here
