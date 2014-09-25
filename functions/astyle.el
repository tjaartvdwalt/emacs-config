(defun astyle-buffer ()
  (interactive "")
  (astyle-region (point-min) (point-max)))

(defun astyle-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           "astyle"
                           (current-buffer) t 
                           (get-buffer-create "*Astyle Errors*") t))
