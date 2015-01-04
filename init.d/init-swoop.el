(req-package swoop
  :bind ("C-c s s" . swoop)
  ("C-c s m" . swoop-multi)
  ("C-c s r" . swoop-pcre-regexp)
  ("C-c s l" . swoop-back-to-last-position)
  :config(progn
           ;; (setq swoop-font-size-change: nil)
           ;; (setq swoop-use-target-magnifier: nil)
           ;; (define-key isearch-mode-map (kbd "C-o") 'swoop-from-isearch)
           ;; (define-key swoop-map (kbd "C-o") 'swoop-multi-from-swoop)
           ;; (setq swoop-window-split-direction: 'split-window-horizontally)
           ;; (setq swoop-window-split-current-window: t)
           ))

