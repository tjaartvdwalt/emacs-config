;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-identifiers
  :config
  (progn
    (add-hook 'prog-mode-hook #'rainbow-identifiers-mode)))
