#!/bin/zsh -f
(req-package shell-switcher
  :config
  (progn
    (shell-switcher-mode t)
    (define-key shell-switcher-mode-map (kbd "C-=")
      'shell-switcher-switch-buffer)
    ))

;; ;; shortcuts for creating a shell
;; (define-key shell-switcher-mode-map (kbd "C-x 4 =")
;;   'shell-switcher-switch-buffer-other-window)
;; (define-key shell-switcher-mode-map (kbd "C-M-=")
;;   'shell-switcher-new-shell)
