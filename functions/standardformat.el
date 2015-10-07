(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (kill-buffer errbuf)
  (setq errbuf (get-buffer-create "*StandardFormat Errors*"))
  (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name))
  (revert-buffer t t))
