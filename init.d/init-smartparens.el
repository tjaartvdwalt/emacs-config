(req-package smartparens
  ;; :require (smartparens-config smartparens-ruby)
  :config(progn
 (smartparens-global-mode)
 (show-smartparens-global-mode t)
 (sp-with-modes '(rhtml-mode)
   (sp-local-pair "<" ">")
   (sp-local-pair ""))))
