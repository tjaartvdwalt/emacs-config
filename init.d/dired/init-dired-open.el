(use-package dired-open
  ;; :require dired
  :config
  (progn
    (define-key dired-mode-map (kbd ",") 'tvdw/dired-decrypt-open-xdg)))

