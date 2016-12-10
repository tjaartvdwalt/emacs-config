(req-package enh-ruby-mode
  :require (ruby-end rspec-mode inf-ruby robe)
  :config(progn
           (add-hook 'enh-ruby-mode-hook 'robe-mode)
           (add-to-list 'auto-mode-alist
                        '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))))
