;;; package --- summary
;;; Commentary:
;;; Code:
(req-package magit
  :bind
  ("C-x m" . magit-status)
  :config
  (progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black")))
  )
(provide 'init-magit)
;;; init-magit ends here
