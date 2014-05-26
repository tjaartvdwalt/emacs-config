(req-package helm
  :require (helm-config helm-company helm-swoop)
  :config (progn
            (helm-mode 1))
  ;;(add-to-list 'helm-completing-read-handlers-alist (find-file . ido))
  )
