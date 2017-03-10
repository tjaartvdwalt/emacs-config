;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`

(use-package tern
  :diminish tern-mode
  :config (progn
            (add-hook 'js-mode-hook (lambda () (tern-mode t)))))
