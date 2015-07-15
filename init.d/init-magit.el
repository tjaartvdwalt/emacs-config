;;; package --- summary
;;; Commentary:
;;; Code:
(req-package magit
  :require (magit-filenotify)
  :bind ("C-c v m" . magit-status)
  :config
  (progn
    (setq magit-last-seen-setup-instructions "1.4.0")
    ;; (set-face-foreground 'magit-diff-add "green3")
    ;; (set-face-foreground 'magit-diff-del "red3")
    (when (not window-system)
      (set-face-background 'magit-item-highlight "black"))
    (add-hook 'magit-status-mode-hook (lambda () (magit-filenotify-mode t)))))
(provide 'init-magit)
;;; init-magit ends here
