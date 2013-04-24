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
	'(skype keep-end rhtml-mode multiple-line-edit)))
;; Sync the plugins
(el-get 'sync my-packages)

(require 'multiple-line-edit)

;************* Configure Plugins *******************
;; skype
(setq skype--my-user-handle "rkwtavdw")
(skype--init)
(global-set-key (kbd "M-9") 'skype--anything-command)
(global-set-key (kbd "C-c s r") 'skype--open-recent-chat-buffer-command)
(global-set-key (kbd "C-c s m") 'skype--chat-mode-message-command)
(global-set-key (kbd "C-c s s") 'skype--message-mode-send-command)

;; rhtml
(add-hook 'rhtml-mode-hook
   (lambda () (rinari-launch)))
