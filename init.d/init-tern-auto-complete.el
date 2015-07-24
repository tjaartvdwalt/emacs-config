(req-package tern-auto-complete
  :require (tern auto-complete)
  :config (progn
            (setq tern-ac-sync t)
            (add-hook 'js-mode-hook
                      (lambda ()
                        (message "in js mode hook")
                        (add-to-list 'ac-sources 'ac-source-tern-completion)))))
