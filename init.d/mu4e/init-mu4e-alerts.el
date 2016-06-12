(req-package mu4e-alert
  :config(progn
           (mu4e-alert-set-default-style 'libnotify)
           (add-hook 'after-init-hook #'mu4e-alert-enable-notifications)))
