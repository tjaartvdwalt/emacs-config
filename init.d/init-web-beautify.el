(req-package web-beautify

  :config(
          
          (eval-after-load 'js-mode
            '(add-hook 'js-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

          (eval-after-load 'json-mode
            '(add-hook 'json-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

          (eval-after-load 'sgml-mode
            '(add-hook 'html-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))

          (eval-after-load 'css-mode
            '(add-hook 'css-mode-hook
                       (lambda ()
                         (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))))
