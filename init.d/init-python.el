;;; package --- summary
;;; Commentary:
;;; Code:
(req-package python-mode
  :interpreter ("python" . python-mode)
  ;; :config
  ;; (progn
  ;;   (add-hook 'python-mode-hook 'anaconda-mode)
  ;;   (add-hook 'python-mode-hook 'anaconda-eldoc)
  ;;   (add-to-list 'company-backends 'company-anaconda))
  )

(provide 'init-python)
;;; init-python ends here
