(req-package conkeror-minor-mode
a  :config(progn (add-hook 'js-mode-hook (lambda ()
                          (when (string-match "conkeror" (buffer-file-name))
                            (conkeror-minor-mode 1))))
))
