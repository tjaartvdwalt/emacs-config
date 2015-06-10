(req-package helm
    ;; :ensure helm-config
 ;; :require (helm-config)
 ;; :bind (("M-x" . helm-M-x))
  :bind (("M-x" . helm-M-x)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-mini)
         ("C-x C-f" . helm-find-files)
         ("C-c h a" . helm-ag)
          ("C-c h =" . helm-calcul-expression)
         ("C-c h g" . helm-google-suggest)
         ("C-c h s" . helm-surfraw)
         ("C-c h /" . helm-find)
         ("C-c h l" . helm-locate)
         ("C-c h k" . helm-show-kill-ring)
         ("C-c h m" . helm-man-woman)
         ("C-c h p" . helm-do-pdfgrep)
         ("C-c h e" . helm-list-elisp-packages)
         ("C-c h SPC" . helm-all-mark-rings)
         ("C-c h r" . helm-regexp)
         ("C-c h b" . helm-resume))

 :config (progn
           (require 'helm-config)
           (helm-mode t)
           (helm-autoresize-mode t)
           (setq helm-autoresize-max-height 80)

           

           (setq helm-buffers-fuzzy-matching t)
           (setq helm-recentf-fuzzy-match    t)
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
