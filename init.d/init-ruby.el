;;; package --- summary
;;; Commentary:
;;; Code:

;; ruby end
(req-package ruby-mode
:require (ruby-end rvm rspec-mode inf-ruby robe company company-robe)
:init
(progn
     (rvm-use-default)
     (add-hook 'ruby-mode 'auto-make-header)
     (add-hook 'ruby-mode-hook 'robe-mode)
     (add-to-list 'company-backends 'company-robe)
  ))

(provide 'init-ruby)
;;; init-ruby ends here
