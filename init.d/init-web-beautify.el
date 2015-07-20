(req-package web-beautify
  :require(js-mode json-mode sgml-mode css-mode)

  :init(progn
           (add-hook 'js-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js-buffer t t)))

           (add-hook 'json-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js-buffer t t)))
           ))

