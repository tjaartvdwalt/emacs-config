(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         (py-isort-buffer)
                         (py-autopep8))))

  :config (

            )

                                        ;:hook (flycheck-mode . flycheck-elm-setup)
  )

(use-package flycheck-elm
  :config
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup)))
