(req-package org-autolist
  :config(progn
           (add-hook 'org-mode-hook (lambda () (org-autolist-mode)))))
