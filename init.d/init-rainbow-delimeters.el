;;; package --- summary
;;; Commentary:
;;; Code:
(req-package rainbow-delimiters
  :config
  (progn
    (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)))
