(req-package dired+
  :require dired
  :config
  (progn
    (toggle-diredp-find-file-reuse-dir 1)
    
   (setq diredp-image-preview-in-tooltip nil)))
