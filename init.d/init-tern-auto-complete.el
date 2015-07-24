(req-package tern-auto-complete
  :requires (tern auto-complete)
  :config (progn
            (setq tern-ac-sync t))
  :init (progn
         (add-hook 'js-mode-hook
                      (lambda ()
                        (message "in js mode hook")
                        (add-to-list 'ac-sources 'ac-source-tern-completion)))))


