(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (setq errbuf (get-buffer-create "*StandardFormat Errors*"))
  (kill-buffer errbuf)
  (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name))
  (revert-buffer t t))
