;;; package --- summary
;;; Commentary:
;;; Code:
(use-package python-mode
  ;; :interpreter ("python" . python-mode)

  :hook ((python-mode . subword-mode)
          (python-mode. indent-tabs-mode t))
  :config
  (setq py-smart-indentation t)

  (use-package py-autopep8
    :ensure py-isort
    :ensure-system-package (python-isort autopep8)
    :bind (:map python-mode-map
            ("C-c i" .   (lambda ()
                           (interactive)
                           (py-isort-buffer)
                           (py-autopep8))))
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
    :bind (:map python-mode-map
            ("C-c e" . sphinx-doc))
    :hook (python-mode . sphinx-doc-mode))

  (use-package highlight-indentation
    :delight
    :hook (python-mode . (lambda ()
                           (highlight-indentation-mode t)
                           (highlight-indentation-current-column-mode t))))

  (use-package jedi
    :hook (python-mode . jedi:setup)
    :bind (:map python-mode-map
            ("C-M-g" . jedi:goto-definition))
    :config
    (setq jedi:complete-on-dot t)))

(provide 'init-python)
;;; init-python ends here
