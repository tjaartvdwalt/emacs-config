(req-package js2-refactor
  :config (
            (add-hook 'js-mode-hook #'js2-refactor-mode)
            (js2r-add-keybindings-with-prefix "C-c j")
  ))
