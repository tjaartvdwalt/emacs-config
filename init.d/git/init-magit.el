;; package --- summary
;; Commentary:
;; Code:
(use-package magit
 :require (magit-annex magit-rockstar)
  :bind ("C-c v" . magit-status)
 :config
 (progn
   (setq magit-revert-buffers "ask")
   (setq magit-last-seen-setup-instructions "1.4.0")    ))

   ;; (when (not window-system)
   ;; (set-face-background 'magit-item-highlight "black"))
   ;; (add-hook 'magit-status-mode-hook (lambda () (magit-filenotify-mode t)))
(provide 'init-magit)
;; init-magit ends here
