(use-package json-mode
  ;; :require (flycheck)
  :config(progn
           (flycheck-add-mode 'json-jsonlint 'json-mode)
           (add-hook 'json-mode-hook
                     (lambda ()
                       (if (derived-mode-p 'json-mode)
                         ;; (local-unset-key (kbd "\C-c u i"))
                         (add-hook 'after-save-hook 'indent-whole-buffer t t))))))
