(elpa-install 'emacs-eclim)
(require 'eclim)
(global-eclim-mode)
(require 'eclimd)
(setq eclimd-default-workspace "~/my_dev/eclipse_workspace")
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)
