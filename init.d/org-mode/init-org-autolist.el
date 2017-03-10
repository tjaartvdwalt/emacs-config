(use-package org-autolist
  :require (org)
  :config(progn
           (add-hook 'org-mode-hook 'org-autolist-mode)))
