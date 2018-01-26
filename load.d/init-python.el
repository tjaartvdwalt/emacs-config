;;; package --- summary
;;; Commentary:
;;; Code:
(use-package python-mode
  :interpreter ("python" . python-mode)
  :config
  (progn
    ;; sudo pip install isort
    (use-package py-isort
      :config(add-hook 'before-save-hook 'py-isort-before-save))

    ;; sudo pip install autopep8
    (use-package py-autopep8
      :config
      (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

    (use-package pydoc)


    (use-package sphinx-doc
      :config
      (add-hook 'python-mode-hook (lambda ()
                                    (require 'sphinx-doc)
                                    (sphinx-doc-mode t))))
    (use-package highlight-indentation
      :config
      (add-hook 'python-mode-hook (lambda ()
                                    (highlight-indentation-mode t)
                                    (highlight-indentation-current-column-mode t)))

      (use-package jedi
        :config
        (add-hook 'python-mode-hook 'jedi:setup)
        (setq jedi:complete-on-dot t))
      (setq py-smart-indentation t)
      (add-hook 'python-mode-hook
        (lambda ()
          (subword-mode 1))))
    )

  (provide 'init-python)
;;; init-python ends here
