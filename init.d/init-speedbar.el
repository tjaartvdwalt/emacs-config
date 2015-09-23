(req-package speedbar

  :config((progn
            (global-unset-key (kbd "C-\\\\"))
            (global-set-key "\C-\\" 'speedbar))))
