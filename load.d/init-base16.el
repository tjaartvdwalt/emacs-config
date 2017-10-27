(elpa-install 'base16-theme)

(if (display-graphic-p)
  (load-theme 'base16-solarized-light t)
  (load-theme 'wombat t))

;; (use-package base16-theme
;;   ;; :ensure (base16-google-dark)
;;   :config (progn
;;             ))
