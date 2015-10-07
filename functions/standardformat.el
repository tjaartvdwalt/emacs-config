;;
;;         (errbuf (get-buffer-create "*Standardformat Errors*"))

(defun standardfmt ()
  "Format the current buffer according to the standardfmt tool."
  (interactive)
  (call-process "standard-format" nil nil nil "-w" (buffer-file-name))
  (revert-buffer t t))
