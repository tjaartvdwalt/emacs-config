(global-set-key (kbd "C-c n p p") 'npm-publish-patch)
(global-set-key (kbd "C-c n p m") 'npm-publish-minor)
(global-set-key (kbd "C-c n p M") 'npm-publish-major)
(global-set-key (kbd "C-c n f") 'npm-fixpack)
(global-set-key (kbd "C-c n c") 'npm-check)

;; define this in order to get colorized output
(defun npm-shell-execute(cmd)
   (interactive "sShell command: ")
   (shell (get-buffer-create "* my-shell-buf *"))
   (process-send-string (get-buffer-process "my-shell-buf") (concat cmd "\n")))

(defun npm-publish-patch ()  (interactive)(shell-command "npm version patch && npm publish &"))
(defun npm-publish-minor ()  (interactive)(shell-command "npm version minor && npm publish &"))
(defun npm-publish-major ()  (interactive)(shell-command "npm version major && npm publish &"))
(defun npm-fixpack ()  (interactive)(shell-command "fixpack"))
(defun npm-check ()  (interactive)(npm-shell-execute "npm-check"))

(setq system-uses-terminfo nil)
(set-terminal-coding-system 'utf-8-unix)
