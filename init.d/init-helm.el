(req-package helm
    ;; :ensure helm-config
 ;; :require (helm-config)
 ;; :bind (("M-x" . helm-M-x))
  :bind (("M-x" . helm-M-x)
         ("M-y" . helm-show-kill-ring)
         ("C-c h a" . helm-ag)
          ("C-c h c" . helm-calcul-expression)
         ("C-c h g" . helm-google-suggest)
         ("C-c h f" . helm-find-files)
         ("C-c h k" . helm-show-kill-ring)
         ("C-c h m" . helm-mini)
         ("C-c h i" . helm-all-mark-rings)
         ("C-c h s" . helm-swoop)
         ("C-c h l" . helm-locate)
         ("C-c h r" . helm-regexp))

 :config (progn
           (require 'helm-config)
           (helm-mode t)
           (helm-autoresize-mode t)
           (setq helm-autoresize-max-height 80)
           
           (setq helm-M-x-fuzzy-match t)
           (setq helm-imenu-fuzzy-match t)
           (setq helm-apropos-fuzzy-match t)
           (setq helm-lisp-fuzzy-completion t)
           
           ;; (add-to-list 'helm-completing-read-handlers-alist '(find-file . ido))
           ;; (add-to-list 'helm-completing-read-handlers-alist '(dired . ido))
           ;; (global-unset-key (kbd "M-x"))
           ;; (global-set-key (kbd "M-x") 'helm-M-x)
           ;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
           ))
