;;; package --- summary
;;; Commentary:
;;; Code:

(req-package column-enforce-mode
  :defer 1
  :config (progn (add-hook 'prog-mode-hook 'column-enforce-mode)
               ;; (global-set-key "\C-ce" 'column-enforce-mode)
               ))
(provide 'init-column-enforce)
;;; init-column-enforce ends here
