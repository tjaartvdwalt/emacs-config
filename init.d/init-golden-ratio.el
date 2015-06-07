(req-package golden-ratio
  :config(progn
           (golden-ratio-mode 1)

           (defun pl/helm-alive-p ()
             (if (boundp 'helm-alive-p)
                 (symbol-value 'helm-alive-p)))
           (add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)))
