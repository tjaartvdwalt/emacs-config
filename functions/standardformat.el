(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (setq errbuff (get-buffer-create "*StandardFormat Errors*"))

  (call-process "standard-format" nil errbuff nil "-w" (buffer-file-name))
  (revert-buffer t t))
