;;; package --- summary
;;; Commentary:
;;; Code:

(req-package ispell
  :diminish ispell-minor-mode
  :bind
  ;; instead of having ispell shortcuts, I now use helm-flyspell 
  ;; ("C-c i w" . ispell-word)
  ;; ("C-c i b" . ispell-buffer))

  :config
  (progn
    (add-hook 'text-mode-hook 'ispell-minor-mode)
    ;; (setq ispell-change-dictionary "british")
    ;; (global-set-key "\C-cs" 'ispell-buffer)
    ;; (global-set-key "\C-cn" 'ispell-word)
    ))

(provide 'init-ispell)
;;; init-ispell ends here
