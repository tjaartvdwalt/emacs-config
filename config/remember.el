(require 'remember)

(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)

(setq org-default-notes-file (concat org-directory "/remember.org"))
     (define-key global-map "\C-c\C-c" 'org-capture)
