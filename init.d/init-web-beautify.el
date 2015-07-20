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

           ;; (eval-after-load 'web-mode
           ;;   '(add-hook 'web-mode-hook
           ;;              (lambda ()
           ;;                (add-hook 'before-save-hook 'web-beautify-html t t))))

           ;; (eval-after-load 'css-mode
           ;;   '(add-hook 'css-mode-hook
           ;;              (lambda ()
           ;;                (add-hook 'before-save-hook 'web-beautify-css t t))))
           ))
