;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`

(req-package tern
  :config (progn
  (add-hook 'js-mode-hook (lambda () (tern-mode t)))))
