;;; package --- summary
;;; Commentary:
;;; Code:
(use-package python-mode
  :interpreter ("python" . python-mode)
  :config
  ;; sudo pip install isort
  (use-package py-isort
    :config(add-hook 'before-save-hook 'py-isort-before-save))

  ;; sudo pip install autopep8
  (use-package py-autopep8
    ;; :require(python-mode)
    :config (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

  (use-package jedi
    :config
    (add-hook 'python-mode-hook 'jedi:setup)
    (setq jedi:complete-on-dot t))

  )

(provide 'init-python)
;;; init-python ends here
