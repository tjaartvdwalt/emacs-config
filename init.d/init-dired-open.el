(req-package dired-open
  :require dired
  :config
  (progn
    (define-key dired-mode-map (kbd ",") 'dired-open-xdg)))

