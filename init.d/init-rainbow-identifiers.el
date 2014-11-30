;;; package --- summary
;;; Commentary:
;;; Code:
(req-package rainbow-identifiers
  :config
  (progn
    (add-hook 'prog-mode-hook #'rainbow-identifiers-mode)))
