(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         (py-isort-buffer)
                         (py-autopep8))))

                                        ;:hook (flycheck-mode . flycheck-elm-setup)
  )
