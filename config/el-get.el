;************* Downloaded Plugins *******************
;; skype
(el-get 'sync (skype))
(require 'skype)
     (setq skype--my-user-handle "rkwtavdw")
     (skype--init)
     (global-set-key (kbd "M-9") 'skype--anything-command)

     ; Set some skype shortcuts
     (global-set-key (kbd "C-c s r") 'skype--open-recent-chat-buffer-command)
     (global-set-key (kbd "C-c s m") 'skype--chat-mode-message-command)
     (global-set-key (kbd "C-c s s") 'skype--message-mode-send-command)

;; keep-end
(el-get 'sync (keep-end))
(require 'keep-end)

;; rhtml-mode
(el-get 'sync (rhtml-mode))
(require 'rhtml-mode)
     (add-hook 'rhtml-mode-hook
	 (lambda () (rinari-launch)))
