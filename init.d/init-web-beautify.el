(req-package web-beautify
  :require(js-mode json-mode)

  :config
  (progn
    (add-hook 'js-mode-hook
              (lambda ()
                (add-hook 'before-save-hook 'web-beautify-js-buffer nil t)))

    (add-hook 'json-mode-hook
              (lambda ()
                (add-hook 'before-save-hook 'web-beautify-js-buffer nil t)))
    ))
