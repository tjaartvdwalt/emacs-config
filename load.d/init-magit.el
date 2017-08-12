;; package --- summary
;; Commentary:
;; Code:
(use-package magit
  ;; :require (magit-annex magit-rockstar)
  :bind ("C-c v" . magit-status)
  :config
  (setq magit-revert-buffers "ask")
  (setq magit-last-seen-setup-instructions "1.4.0")
  (setq magit-completing-read-function 'ivy-completing-read)

  (use-package magit-svn
    :config
    (add-hook 'magit-mode-hook 'magit-svn-mode))

  (use-package magit-annex)

  (use-package git-auto-commit-mode
    :config (setq gac-automatically-push-p t))

  (use-package gitconfig))

(provide 'init-magit)
;; init-magit ends here
