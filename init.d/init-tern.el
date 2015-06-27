;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`

(req-package tern
  :config (progn
            (autoload 'tern-mode "tern.el" nil t)))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
