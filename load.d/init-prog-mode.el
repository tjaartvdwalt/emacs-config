(remove-hook HOOK FUNCTION &optional LOCAL)




(defun auto-indent-on-save ()
  (add-hook 'prog-mode-hook
	    (lambda ()
	      (add-hook 'before-save-hook 'indent-whole-buffer t t))))
