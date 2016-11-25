(req-package jsx-mode
  :config(
          (progn
            (add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
            (autoload 'jsx-mode "jsx-mode" "JSX mode" t))))
