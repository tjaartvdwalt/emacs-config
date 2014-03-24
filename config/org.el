(require 'org)
(require 'org-contacts)
(require 'org-location-google-maps)

(setq org-startup-truncated nil)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/"))

(setq org-mobile-push "~/ubuntu1/org")
(setq org-mobile-directory "~/ubuntu1/org")

(setq org-checkbox-hierarchical-statistics t)

;;(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

;; (add-hook 'org-mode-hook
;;       '(lambda ()
;;          (local-set-key "M-t" 'org-metadown)
;;          ))


;; <M-S-down>      org-shiftmetadown
;; <M-S-left>      org-shiftmetaleft
;; <M-S-return>    org-insert-todo-heading
;; <M-S-right>     org-shiftmetaright
;; <M-S-up>        org-shiftmetaup
;; <M-down>        
;; <M-left>        org-metaleft
;; <M-return>      org-meta-return
;; <M-right>       org-metaright
;; <M-up>          org-metaup
;; <S-down>        org-shiftdown
