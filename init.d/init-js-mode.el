(progn
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-jsx-mode))
  (add-hook 'js-mode-hook
            (lambda ()
            (subword-mode 1))))
