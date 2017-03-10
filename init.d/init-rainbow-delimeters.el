;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-delimiters
  :config
  (progn
    (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)))
