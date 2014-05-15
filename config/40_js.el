;; js2-mode
(elpa-install 'js2-mode)
(elpa-install 'jss)
(require 'js2-mode)

;; install jquery doc
(elpa-install 'jquery-doc)
(require 'jquery-doc)
(add-hook 'js2-mode-hook 'jquery-doc-setup)

;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`
(add-to-list 'load-path "/usr/lib/node_modules/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(elpa-install 'company-tern)
(add-to-list 'company-backends 'company-tern)
