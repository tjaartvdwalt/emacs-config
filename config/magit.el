;; magit
(elpa-install 'magit)
;; shell switcher is a dependency of magit
(elpa-install 'shell-switcher)
(require 'magit)
;; change magit diff colors
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

(define-key shell-switcher-mode-map (kbd "C-x m")
	    'magit-status)
