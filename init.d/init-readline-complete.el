;;; package --- summary
;;; Commentary:
;;; Code:
(use-package readline-complete
  :require (auto-complete)
  :config
  (progn
    (add-to-list 'ac-modes 'shell-mode)
    (add-hook 'shell-mode-hook 'ac-rlc-setup-sources)))
