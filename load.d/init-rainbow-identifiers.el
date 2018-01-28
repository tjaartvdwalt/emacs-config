;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-identifiers
  :hook (prog-mode . rainbow-identifiers-mode)
  :config
  (progn
    (add-hook 'prog-mode-hook #'rainbow-identifiers-mode)))
