;;; package --- summary
;;; Commentary:
;;; Code:
(req-package readline-complete
  :require (auto-complete)
  :config
  (progn
    (add-to-list 'ac-modes 'shell-mode)
    (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)))
