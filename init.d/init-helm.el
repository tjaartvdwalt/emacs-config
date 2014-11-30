(req-package helm
  :disabled 1
 :require (helm-config helm-projectile)
 ;; :bind (("M-x" . helm-M-x))
 :config (progn
           (require 'helm-config)))

;; :config (progn
 ;;           (helm-mode 1)
 ;;           (global-set-key (kbd "C-x C-f") 'helm-find-files))
 ;;(add-to-list 'helm-completing-read-handlers-alist (find-file . ido))
