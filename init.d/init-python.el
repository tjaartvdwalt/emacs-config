;;; package --- summary
;;; Commentary:
;;; Code:
(req-package python
  :require (anaconda-mode company)
  :interpreter ("python" . python-mode)
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc)
    (add-to-list 'company-backends 'company-anaconda)))

(provide 'init-python)
;;; init-python ends here
