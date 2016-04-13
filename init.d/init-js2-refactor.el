(req-package js2-refactor
  :require (js-mode)
  :config ((progn
            ;; (add-hook 'js-mode-hook #'js2-refactor-mode)
                (add-hook 'js-mode-hook
              (lambda ()
                (add-hook 'js2-refactor-mode)))

(js2r-add-keybindings-with-prefix "C-c j"))))
