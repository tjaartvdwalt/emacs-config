;; Self install el-get if not yet installed
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; Create a list of all plugins to install
(setq my-packages
    (append
	'(skype keep-end rhtml-mode multiple-line-edit rdebug)))
;; Sync the plugins
(el-get 'sync my-packages)

(require 'multiple-line-edit)

;************* Configure Plugins *******************
;; skype
(setq skype--my-user-handle "rkwtavdw")
(skype--init)
