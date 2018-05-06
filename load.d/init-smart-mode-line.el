;; (use-package powerline)
;; (use-package airline-themes
;;   :config
;;   (load-theme 'airline-kolor)
;;   (setq powerline-utf-8-separator-left        #xe0b0
;;     powerline-utf-8-separator-right       #xe0b2
;;     airline-utf-glyph-separator-left      #xe0b0
;;     airline-utf-glyph-separator-right     #xe0b2
;;     airline-utf-glyph-subseparator-left   #xe0b1
;;     airline-utf-glyph-subseparator-right  #xe0b3
;;     airline-utf-glyph-branch              #xe0a0
;;     airline-utf-glyph-readonly            #xe0a2
;;     airline-utf-glyph-linenumber          #xe0a1)
;;   )

(use-package smart-mode-line
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/name-width 8)
  (setq sml/mode-width "full")
  (use-package smart-mode-line-powerline-theme
    :config
      (sml/apply-theme 'light-powerline))
  (sml/setup))
