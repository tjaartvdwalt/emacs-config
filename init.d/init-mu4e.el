(req-package mu4e
  :require (gnus-dired)
  :config
  (progn
    ;;Set a shortcut for mu4e
    (global-set-key "\C-ce" 'mu4e)
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    (setq mu4e-maildir "~/Maildir/tjaart@tjaart.co.za")))
