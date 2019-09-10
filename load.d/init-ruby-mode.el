(use-package ruby-mode
  :mode "\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'"
  :interpreter "ruby")

  ;; :config
  ;; (add-hook 'ruby-mode-hook 'eldoc-mode)
  ;; (add-to-list 'ruby-mode)

  ;; (use-package chruby)

  ;; (use-package inf-ruby)

  ;; (use-package rspec-mode)

  ;; ;; (use-package robe
  ;; ;;   :hook ((ruby-mode . robe-mode)(ruby-mode . ac-robe-setup)))

  ;; ;; (use-package rubocop
  ;; ;;   :hook (ruby-mode . (lambda ()
  ;; ;;                        (add-hook
  ;; ;;                          'after-save-hook '
  ;; ;;                          rubocop-autocorrect-current-file t t))))

  ;; (use-package yard-mode
  ;;   :hook (ruby-mode . yard-mode)))
