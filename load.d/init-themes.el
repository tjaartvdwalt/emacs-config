(use-package color-theme-sanityinc-solarized
  :defer t
  :init
  (progn
    (add-hook 'window-setup-hook '(lambda () (set-cursor-color "magenta")))
  ;; (add-hook 'after-make-frame-functions '(lambda (f) (with-selected-frame f (set-cursor-color "magenta"))))
  (load-theme 'sanityinc-solarized-dark t)))
