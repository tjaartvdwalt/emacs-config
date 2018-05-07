;; package --- summary
;; Commentary:
;; Code:
(use-package magit
  :bind ("C-c v" . magit-status)
  :config
  (setq magit-revert-buffers "ask")
  (setq magit-last-seen-setup-instructions "1.4.0")
  (setq magit-completing-read-function 'ivy-completing-read)
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  (use-package magit-svn
    :config
    (add-hook 'magit-mode-hook 'magit-svn-mode))

  (use-package magit-imerge)

  (use-package gitconfig))

(use-package git-auto-commit-mode
  :delight
  :config (setq gac-automatically-push-p t))

(provide 'init-magit)
;; init-magit ends here
