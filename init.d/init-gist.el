(req-package gist
  :init
  (progn
    (global-set-key "\C-xgp" 'gist-buffer)
    (global-set-key "\C-xgs" 'gist-buffer-private)
    (global-set-key "\C-xgl" 'gist-list)
    (global-set-key "\C-xgr" 'gist-remove-file)
    ))
