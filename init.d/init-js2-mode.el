;;; package --- summary
;;; Commentary:
;;; Code:

;; js2-mode
(req-package js2-mode
  :require (jss jquery-doc)
  :mode "\\.js$"
  :config
  (progn

    (autoload 'js2-mode "js2" nil t)
    ;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
    
    (add-hook 'js2-mode-hook 'jquery-doc-setup)
    (add-to-list 'load-path "/usr/lib/node_modules/tern/emacs/")
    (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
    ;; (add-to-list 'company-backends 'company-tern)
    ;; tern must be installed seperately
    ;; on arch linux `yaourt -S nodejs-tern`
    (autoload 'tern-mode "tern.el" nil t)))


(provide 'init-js2-mode)
;;; init-js ends here
