(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         ;; (setq filename (buffer-file-name (window-buffer (minibuffer-selected-window))))
                         ;; (setq filename "/home/tjaart/elm-architecture-tutorial/examples/01-button.elm")
                         (let ((errbuf (get-buffer-create "*Elm Format Errors*")))
                           (if (zerop (call-process "elm-format" nil errbuf nil "--yes" "/home/tjaart/elm-architecture-tutorial/examples/01-button.elm"))
                           (progn
                             (revert-buffer t t)
                             (if errbuf (kill-error-buffer errbuf)))
                           (progn
                             (revert-buffer t t)
                             (display-buffer errbuf)
                             )))
                         ))

  (use-package flycheck-elm
    :config
    (eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup)))
