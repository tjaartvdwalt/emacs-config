(add-hook 'prog-mode-hook 'auto-indent-on-save)

(remove-hook HOOK FUNCTION &optional LOCAL)




(defun auto-indent-on-save ()
  (add-hook 'before-save-hook 'indent-whole-buffer t t))
