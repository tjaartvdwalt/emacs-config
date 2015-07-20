(req-package web-beautify
  :require(js-mode json-mode sgml-mode css-mode)
  :config(

          (eval-after-load 'js-mode
            '(add-hook 'js-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

          (eval-after-load 'json-mode
            '(add-hook 'json-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

          (eval-after-load 'web-mode
            '(add-hook 'web-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))

          (eval-after-load 'css-mode
            '(add-hook 'css-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))))
