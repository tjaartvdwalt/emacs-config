(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (let  (errbuff (get-buffer-create "*StandardFormat Errors*"))

  (call-process "standard-format" nil t nil "-w" (buffer-file-name))
  (revert-buffer t t)))
