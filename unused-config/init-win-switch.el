(req-package win-switch
  :init
  (progn
    (win-switch-setup-keys-arrow-meta "\C-xo")
    
     (win-switch-add-key    "c" 'win-switch-enlarge-vertically-keys)
     (win-switch-add-key    "t" 'win-switch-shrink-vertically-keys)
     (win-switch-add-key    "n" 'win-switch-enlarge-horizontally-keys)
     (win-switch-add-key    "h" 'win-switch-shrink-horizontally-keys)
    (setq win-switch-idle-time 2)
    ))
