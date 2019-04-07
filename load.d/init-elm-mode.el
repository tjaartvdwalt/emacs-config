(use-package elm-mode
  :delight (elm-indent-mode)
  :bind (:map elm-mode-map
          ("C-M-g" . elm-mode-goto-tag-at-point)
          ("C-M-c" . pop-tag-mark)
          ("C-c i" .   (lambda ()
                         (interactive)
                         (elm-compile-clean-imports)
                         (elm-mode-format-buffer))))
  :config
  (setq elm-interactive-command '("elm" "repl")
    elm-reactor-command '("elm" "reactor")
    elm-compile-command '("elm" "make")
    elm-package-command '("elm" "package"))
  (add-to-list 'company-backends 'company-elm)
  (setq elm-tags-on-save 1))

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
