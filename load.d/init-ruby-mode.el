(use-package ruby-mode
  :mode "\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'"
  :interpreter "ruby"

  :config
  (add-hook 'ruby-mode-hook 'eldoc-mode)
  (add-to-list 'ac-modes 'ruby-mode)

  (use-package chruby)

  (use-package inf-ruby)

  (use-package rspec-mode)

  (use-package robe
    :config (add-hook 'ruby-mode-hook 'robe-mode))

  (use-package rubocop
    :config
    (add-hook 'ruby-mode-hook (lambda () (add-hook 'after-save-hook 'rubocop-autocorrect-current-file t t))))

  (use-package yard-mode
    :config (add-hook 'ruby-mode-hook 'yard-mode)))
