(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (call-process "standard-format" nil nil nil "-w" (buffer-file-name))
  (revert-buffer t t))
