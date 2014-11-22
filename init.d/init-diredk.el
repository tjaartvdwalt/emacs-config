;; use dired-k to show git status
(req-package dired-k
  :require dired
  :config
  (progn
    ;; use dired-k as alternative to revert buffer. This will refresh git status
    (define-key dired-mode-map (kbd "g") 'dired-k)
    (add-hook 'dired-mode-hook 'dired-k)))
