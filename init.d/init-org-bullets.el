(req-package org-bullets
  :config(progn
           (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))))
