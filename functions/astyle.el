(defun astyle ()
  (interactive)
  "Execute astyle on the current buffer."

  ;; save the buffer
  (save-current-buffer)

  (shell-command (concat "astyle " (buffer-file-name)))
    (revert-buffer t t))
