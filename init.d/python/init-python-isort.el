;; This package requires the isort package to be installed from pypi
;; You can install it using:
;;
;; sudo pip install isort
(use-package py-isort
  :config(progn (add-hook 'before-save-hook 'py-isort-before-save)))

;; to remove hook (remove-hook 'before-save-hook 'py-isort-before-save)
