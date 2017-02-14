(progn
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))
    (add-hook 'javascript-mode-hook 'subword-mode))
