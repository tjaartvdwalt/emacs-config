(use-package tern-auto-complete
  ;; :require (tern auto-complete)
   :config (progn
            (tern-ac-setup)
            (setq tern-ac-sync t)
            (add-hook 'js-mode-hook
                      (lambda ()
                        (add-to-list 'ac-sources 'ac-source-tern-completion)))))
