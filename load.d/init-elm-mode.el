(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         (shell-command-on-region pmin pmax
                           "astyle"
                           (current-buffer) t
                           (get-buffer-create "*Astyle Errors*") t))
            )))

(use-package flycheck-elm
  :config
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup)))
