;; This package requires the isort package to be installed from pypi
;; You can install it using:
;;
;; sudo pip install isort
(req-package py-isort
  :config(progn (add-hook 'before-save-hook 'py-isort-before-save)))

