;;; package --- summary
;;; Commentary:
;;; Code:
(use-package python-mode
  ;; :interpreter ("python" . python-mode)

  :hook (python-mode . subword-mode)
  :config
  (setq py-smart-indentation t)

  ;; ;; sudo pip install isort
  ;; (use-package py-isort
  ;;   :delight
  ;;   :config(add-hook 'before-save-hook 'py-isort-before-save))

  ;; sudo pip install autopep8
  (use-package py-autopep8
    :ensure py-isort
    :ensure-system-package autopep8
    :bind (:map python-mode-map
            ("C-c i" . (py-isort-buffer py-autopep8)))
    :config
    (setq py-autopep8-options '("--max-line-length=100")))

  (use-package pydoc
    :bind (:map python-mode-map
            ("C-c d" . pydoc-at-point)))

  (use-package tox
    :ensure-system-package tox
    :bind (:map python-mode-map
            ("C-c t" . tox-current-test)
            :map python-mode-map
            ("C-c c" . tox-current-class)))

  (use-package sphinx-doc
    :delight
    :config
    (add-hook 'python-mode-hook (lambda ()
                                  (sphinx-doc-mode t))))

  (use-package highlight-indentation
    :config
    (add-hook 'python-mode-hook (lambda ()
                                  (highlight-indentation-mode t)
                                  (highlight-indentation-current-column-mode t))))

  (use-package jedi
    :config
    (add-hook 'python-mode-hook 'jedi:setup)
    (setq jedi:complete-on-dot t)))

(provide 'init-python)
;;; init-python ends here
