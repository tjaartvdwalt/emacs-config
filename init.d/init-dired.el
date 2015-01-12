;;; package --- summary
;;; Commentary:
;;; Code:

(req-package dired
  :config
  (progn
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-alh")
    ;; used to attach files in mu4e
    (add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
    (setq diredp-hide-details-initially-flag nil)
    (define-key dired-mode-map (kbd "\\") 'dired-get-size)))

(provide 'init-dired)
;;; dired ends here
