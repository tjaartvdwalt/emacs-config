(req-package web-beautify
  :require(js-mode json-mode sgml-mode css-mode)

  (add-hook 'c-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'astyle-buffer nil 'buffer-local)))

  :config(progn
           (add-hook 'js-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js)))

           (add-hook 'json-mode-hook
                     (lambda ()
                       (add-hook 'before-save-hook 'web-beautify-js)))
           ))
