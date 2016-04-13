(req-package js2-refactor
  :config((progn
(add-hook 'js-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-j"))))
