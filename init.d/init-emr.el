(req-package emr
  :config(progn
           (define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)
           (add-hook 'prog-mode-hook 'emr-initialize)))
