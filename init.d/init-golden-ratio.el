(req-package golden-ratio
  :init(progn
           (defcustom golden-ratio-extra-commands
             '(windmove-left windmove-right windmove-down windmove-up ace-window)
             "List of extra commands used to jump to other window."
             :group 'golden-ratio
             :type '(repeat symbol))
         )
  :config(progn
           (golden-ratio-mode 1)
           (setq golden-ratio-auto-scale t)

           
           ;; exclude golden-ratio from helm
           (defun pl/helm-alive-p ()
             (if (boundp 'helm-alive-p)
                 (symbol-value 'helm-alive-p)))
           (add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)))
