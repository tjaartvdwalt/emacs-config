(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (let (errbuf (get-buffer-create "*StandardFormat Errors*"))
  (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name))
  (revert-buffer t t)
  (display-buffer errbuf)))
