;;; package --- summary
;;; Commentary:
;;; Code:
(req-package readline-complete
  :require (autocomplete)
  :config
  (progn
    (add-to-list 'ac-modes 'eshell-mode)
    (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)))
