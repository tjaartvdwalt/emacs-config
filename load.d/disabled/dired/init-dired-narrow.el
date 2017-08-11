(use-package dired-narrow
;;  :require dired
  :config
  (progn
        (define-key dired-mode-map (kbd "[") 'dired-narrow-regexp)))

