(use-package elm-mode
  :bind (:map elm-mode-map
          ("C-M-g" . jedi:goto-definition)
          ("C-M-p" . jedi:goto-definition-pop-marker)
          ("C-c i" .   (lambda ()
                         (interactive)
                         (let ((errbuf (get-buffer-create "*Elm Format Errors*")))
                           (elm-compile-clean-imports)
                           (elm-mode-format-buffer)))))
  :config
  (setq elm-tags-on-save 1)
  )

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
