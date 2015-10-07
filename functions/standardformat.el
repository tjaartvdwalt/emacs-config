(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (let ((errbuf (get-buffer-create "*StandardFormat Errors*")))
    (with-current-buffer errbuf
      (erase-buffer))

    (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name))
    (revert-buffer t t)
    (display-buffer errbuf)))
