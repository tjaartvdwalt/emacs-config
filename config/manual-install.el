;; You need to install sage mode manually by running:
;; sage -i sage_mode
;; After installation of the spkg, you must add something like the
;; following to your .emacs:

(add-to-list 'load-path "/opt/sage/local/share/emacs")
(require 'sage "sage")
(setq sage-command "/opt/sage/sage")

;; If you want sage-view to typeset all your output and have plot()
;; commands inline, uncomment the following line and configure sage-view:
;; (require 'sage-view "sage-view")
;; (add-hook 'sage-startup-after-prompt-hook 'sage-view)
;; You can use commands like
;; (add-hook 'sage-startup-after-prompt-hook 'sage-view-disable-inline-output)
;; (add-hook 'sage-startup-after-prompt-hook 'sage-view-disable-inline-plots)
;; to enable some combination of features.

;; Also consider running (customize-group 'sage) to see more options.

;; End .emacs
