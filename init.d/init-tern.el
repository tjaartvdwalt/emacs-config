;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`

(req-package tern
  :config (progn
            ;; (autoload 'tern-mode "tern.el" nil t))
  (add-hook 'js-mode-hook (lambda () (tern-mode t)))
  (eval-after-load 'tern
    '(progn
       (require 'tern-auto-complete)
       (tern-ac-setup)))
  )
