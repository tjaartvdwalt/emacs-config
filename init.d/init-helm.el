(req-package helm
  :require (helm-config helm-company helm-swoop)
  :disabled 1
  :config (progn
            (helm-mode 1)
            (global-set-key (kbd "C-x C-f") 'helm-find-files)
            ))
  ;;(add-to-list 'helm-completing-read-handlers-alist (find-file . ido))
