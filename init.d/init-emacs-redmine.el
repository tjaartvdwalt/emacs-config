(add-to-list 'load-path "~/.emacs.d/manual/emacs-redmine")
(require 'redmine)

(defun redmine-solmates ()
  (interactive)
  (setq redmine-program "~/.emacs.d/manual/emacs-redmine/redmine.py")
  (setq redmine-project-name "solmates")
  (setq redmine-login-key "f450688fcd92fd4ae47099e11008e6ce8bdff0ad")
  (setq redmine-url "http://jenkins.getsolmates.com:3000")
  (redmine-show-sprints))