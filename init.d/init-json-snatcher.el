(req-package json-snatcher
  :config((progn
            defun js-mode-bindings ()
            "Sets a hotkey for using the json-snatcher plugin"
            (when (string-match  "\\.json$" (buffer-name))
              (local-set-key (kbd "C-c M-w") 'jsons-print-path)))
          (add-hook 'js-mode-hook 'js-mode-bindings)
          (add-hook 'js2-mode-hook 'js-mode-bindings)))
