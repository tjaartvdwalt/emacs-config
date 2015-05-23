(req-package helm
 :require (helm-config)
 :bind (("M-x" . helm-M-x))
 :config (progn
           (require 'helm-config)
           (helm-mode 1)
           (helm-autoresize-mode 1)
           ;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
           ))
           ;; (add-to-list 'helm-completing-read-handlers-alist (find-file . ido)
