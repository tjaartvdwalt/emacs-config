(req-package org-toc
  :config((eval-after-load "org-toc-autoloads"
  '(progn
     (if (require 'org-toc nil t)
         (add-hook 'org-mode-hook 'org-toc-enable)
       (warn "org-toc not found"))))))
