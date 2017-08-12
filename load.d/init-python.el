;;; package --- summary
;;; Commentary:
;;; Code:
(use-package python-mode
  :interpreter ("python" . python-mode)
  :config
  ;; sudo pip install isort
  (use-package py-isort
    :config(add-hook 'before-save-hook 'py-isort-before-save))

  (use-package py-autopep8
    ;; :require(python-mode)
    :config (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))


  )

(provide 'init-python)
;;; init-python ends here
