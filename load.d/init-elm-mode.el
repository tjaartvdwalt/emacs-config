(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         (let ((errbuf (get-buffer-create "*Elm Format Errors*")))
                           (with-current-buffer errbuf
                             (erase-buffer))

                           (if (zerop (call-process "elm-format" nil errbuf nil "--yes" (buffer-file-name)))
                             (progn
                               (revert-buffer t t)
                               (if errbuf (kill-error-buffer errbuf)))
                             (progn
                               (revert-buffer t t)
                               (display-buffer errbuf))))))))
(use-package flycheck-elm
  :config
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup)))
