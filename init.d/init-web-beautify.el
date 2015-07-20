(req-package web-beautify
  :require(js-mode json-mode sgml-mode css-mode)

  :config(progn
           (add-hook 'js-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js t t)))

           (add-hook 'json-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js t t)))
           ))
