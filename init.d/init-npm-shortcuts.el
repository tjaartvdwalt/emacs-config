(global-set-key (kbd "C-c n p p") 'npm-publish-patch)
(global-set-key (kbd "C-c n p m") 'npm-publish-minor)
(global-set-key (kbd "C-c n p M") 'npm-publish-major)
(global-set-key (kbd "C-c n f") 'npm-fixpack)

(defun npm-publish-patch ()  (interactive)(shell-command "npm version patch && npm publish &"))
(defun npm-publish-minor ()  (interactive)(shell-command "npm version minor && npm publish"))
(defun npm-publish-major ()  (interactive)(shell-command "npm version major && npm publish"))
(defun npm-fixpack ()  (interactive)(shell-command "fixpack"))
