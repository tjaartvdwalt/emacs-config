(require 'org)
(require 'org-contacts)
(require 'org-location-google-maps)
(require 'org-latex)

;; use minted for latex exported code blocks
(setq org-export-latex-listings 'minted)
(add-to-list 'org-export-latex-packages-alist '("" "minted"))

(setq org-clock-idle-time 5)
(setq org-startup-truncated nil)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/"))

(setq org-mobile-push "~/Dropbox/org")
(setq org-mobile-directory "~/Dropbox/org")

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
