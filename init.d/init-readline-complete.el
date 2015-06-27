;;; package --- summary
;;; Commentary:
;;; Code:
(req-package readline-complete
  :require (company)
  :config
  (progn
    (add-to-list 'ac-modes 'shell-mode)
    (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)))
