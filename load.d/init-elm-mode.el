(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-c i" .   (lambda ()
                         (interactive)
                         (let ((errbuf (get-buffer-create "*Elm Format Errors*")))
                           (elm-compile-clean-imports)
                           (if (zerop (elm-mode-format-buffer))
                             (progn
(message "hello")
                               )

                             )))))

                           ;; (with-current-buffer errbuf
                           ;;   (erase-buffer))

                           ;; (save-buffer)
                           ;; (if (zerop (call-process "elm-format" nil errbuf nil "--yes" (buffer-file-name)))
                           ;;   (progn
                           ;;     (revert-buffer t t)
                           ;;     (if errbuf (kill-error-buffer errbuf)))
                           ;;   (progn
                           ;;     (revert-buffer t t)
                           ;;     (display-buffer errbuf))))))))
