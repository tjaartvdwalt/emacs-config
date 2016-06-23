(add-to-list 'load-path "~/.emacs.d/manual/npm.el")
(require 'npm)

(global-set-key (kbd "C-c n i") 'npm-install)
(global-set-key (kbd "C-c n n") 'npm-new)
(global-set-key (kbd "C-c n r") 'npm-run)
(global-set-key (kbd "C-c n s") 'npm-new-dependency)
(global-set-key (kbd "C-c n d") 'npm-new-dev-dependency)
(global-set-key (kbd "C-c n e") 'npm-nodemon-exec)
(global-set-key (kbd "C-c n f") (lambda () (interactive) (call-process "fixpack" nil f)))
;; (global-set-key (kbd "C-c n f") (lambda () (interactive) (shell-command "fixpack")))
(global-set-key (kbd "C-c n p p") (lambda () (interactive) (shell-command "npmPp &")))
(global-set-key (kbd "C-c n p m") (lambda () (interactive) (shell-command "npmPm &")))
(global-set-key (kbd "C-c n p M") (lambda () (interactive) (shell-command "npmPM &")))
(global-set-key (kbd "C-c n o") (lambda () (interactive) (shell-command "npm outdated &")))
(global-set-key (kbd "C-c n t") 'npm-test)
(global-set-key (kbd "C-c n v") 'npm-version)
