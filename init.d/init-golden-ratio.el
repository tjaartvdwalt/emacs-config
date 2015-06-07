(req-package golden-ratio
  :config(progn
           (golden-ratio-mode 1)
           (setq golden-ratio-auto-scale t)

           (add-hook 'buffer-list-update-hook (lambda ()
                                                golden-ratio))
           
           ;; exclude golden-ratio from helm
           (defun pl/helm-alive-p ()
             (if (boundp 'helm-alive-p)
                 (symbol-value 'helm-alive-p)))
           (add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)))
