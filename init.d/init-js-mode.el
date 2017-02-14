(progn
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))
(add-hook 'js-mode-hook #'subword-mode)
  )
