;;; package --- summary
;;; Commentary:
;;; Code:

(use-package column-enforce-mode
  :diminish column-enforce-mode
  :config (progn (add-hook 'prog-mode-hook 'column-enforce-mode)
                 ;; (global-set-key "\C-ce" 'column-enforce-mode)
                 ))
(provide 'init-column-enforce)
;;; init-column-enforce ends here
