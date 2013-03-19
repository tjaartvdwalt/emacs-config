(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq my-packages
    (append
	'(skype keep-end rhtml-mode)))

(el-get 'sync my-packages)



;************* Downloaded Plugins *******************
(setq skype--my-user-handle "rkwtavdw")
(skype--init)
(global-set-key (kbd "M-9") 'skype--anything-command)

; Set some skype shortcuts
(global-set-key (kbd "C-c s r") 'skype--open-recent-chat-buffer-command)
(global-set-key (kbd "C-c s m") 'skype--chat-mode-message-command)
(global-set-key (kbd "C-c s s") 'skype--message-mode-send-command)

(add-hook 'rhtml-mode-hook
   (lambda () (rinari-launch)))
