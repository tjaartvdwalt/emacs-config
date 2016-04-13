;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`

(req-package tern
  :diminish tern-mode
  :config (progn
            (add-hook 'js2-mode-hook (lambda () (tern-mode t)))))
