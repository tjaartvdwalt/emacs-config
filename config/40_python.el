;;; Code:
(elpa-install 'anaconda-mode)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc)

(add-to-list 'company-backends 'company-anaconda)
