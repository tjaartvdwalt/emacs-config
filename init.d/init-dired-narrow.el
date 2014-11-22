(req-package dired-narrow
  :require dired
  :init
  (progn
        (define-key dired-mode-map (kbd "[") 'dired-narrow-regexp)))

