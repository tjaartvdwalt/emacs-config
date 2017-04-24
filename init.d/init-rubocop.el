(use-package rubocop
  :config (progn
             (add-hook 'ruby-mode-hook (lambda () (add-hook 'after-save-hook 'rubocop-autocorrect-current-file)))))
