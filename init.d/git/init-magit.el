;; package --- summary
;; Commentary:
;; Code:
(use-package magit
 ;; :require (magit-annex magit-rockstar)
  :bind ("C-c v" . magit-status)
 :config
 (progn
   (setq magit-revert-buffers "ask")
   (setq magit-last-seen-setup-instructions "1.4.0")    ))
(provide 'init-magit)
;; init-magit ends here
