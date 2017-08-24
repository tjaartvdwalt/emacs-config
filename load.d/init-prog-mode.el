(add-hook 'prog-mode-hook 'auto-indent-on-save)

(remove-hook 'prog-mode-hook 'auto-indent-on-save)




(defun auto-indent-on-save ()
  (add-hook 'before-save-hook 'indent-whole-buffer t t))
