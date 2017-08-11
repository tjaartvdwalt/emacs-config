(use-package ruby-mode
  :init (progn
          (use-package rspec-mode)
          (use-package inf-ruby)
          (use-package robe)
          (use-package yard-mode)
          (use-package auto-complete))
  :config (progn
            (add-hook 'ruby-mode-hook 'robe-mode)
            (add-hook 'ruby-mode-hook 'yard-mode)
            (add-hook 'ruby-mode-hook 'eldoc-mode)
            (add-to-list 'ac-modes 'ruby-mode)
            (message "add to alist")
            (add-to-list 'auto-mode-alist
              '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . ruby-mode))))
