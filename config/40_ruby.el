;; ruby end
(elpa-install 'ruby-end)
(require 'ruby-end)

;; RVM
(elpa-install 'rvm)
(require 'rvm)
     (rvm-use-default)

;; rspec-mode
(elpa-install 'rspec-mode)
(require 'rspec-mode)

;; inf-ruby
(elpa-install 'inf-ruby)
(require 'inf-ruby)
(add-hook 'ruby-mode 'auto-make-header)

(elpa-install 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-to-list 'company-backends 'company-robe)
