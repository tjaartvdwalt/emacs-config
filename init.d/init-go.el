(req-package go-mode
  :require (go-eldoc yasnippet go-snippets gotest)
  ;; :bind
  ;;        (("M-." . godef-jump)
  ;;         ("C-c C-r" . go-remove-unused-imports)
  ;;         ("C-c C-p" . go-test-current-project)
  ;;         ("C-c C-f" . go-test-current-file)
  ;;         ("C-c C-t" . go-test-current-test))

  :config
  (progn
    (add-hook 'before-save-hook 'gofmt-before-save)
    (add-hook 'go-mode-hook 'go-eldoc-setup)
    ;;(add-to-list 'company-backends 'company-go)
    ))

