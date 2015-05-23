(req-package helm
 ;; :require (helm-config)
 ;; :bind (("M-x" . helm-M-x))
  :bind (("C-c h a" . helm-ag)
         ("C-c h s" . helm-swoop))
 :config (progn
           ;; (require 'helm-config)
           ;; (helm-mode 1)
           (helm-autoresize-mode 1)
           ;; (add-to-list 'helm-completing-read-handlers-alist '(find-file . ido))
           ;; (add-to-list 'helm-completing-read-handlers-alist '(dired . ido))
           ;; (global-set-key (kbd "M-x") 'helm-M-x)
           ;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
           ))
