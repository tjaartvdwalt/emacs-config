(use-package ruby-mode
  :config
  (add-hook 'ruby-mode-hook 'eldoc-mode)
  (add-to-list 'ac-modes 'ruby-mode)
  (add-to-list 'auto-mode-alist
               '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . ruby-mode))

  (use-package inf-ruby)
  (use-package chruby)
  (use-package rspec-mode)
  (use-package robe
    :config (add-hook 'ruby-mode-hook 'robe-mode))

  (use-package yard-mode
    :config (add-hook 'ruby-mode-hook 'yard-mode)))
