;;; package --- summary
;;; Commentary:
;;; Code:

(req-package ispell
  :init
  (progn
    (add-hook 'text-mode-hook 'ispell-minor-mode)
    (setq ispell-change-dictionary "british")
    ;; (global-set-key "\C-cs" 'ispell-buffer)
    ;; (global-set-key "\C-cn" 'ispell-word)
    ))

(provide 'init-ispell)
;;; init-ispell ends here
