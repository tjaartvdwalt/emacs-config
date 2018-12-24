;; (use-package color-theme-sanityinc-solarized
;;   :hook (window-setup . (lambda () (set-cursor-color "magenta")))
;;   :defer t
;;   :init
;;   (add-hook 'after-make-frame-functions '(lambda (f) (with-selected-frame f (set-cursor-color "magenta"))))
;;   (load-theme 'sanityinc-solarized-dark t))

(use-package dracula-theme)
