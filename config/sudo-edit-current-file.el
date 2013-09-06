;;(set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))
(require 'tramp)
(defun sudo-edit-current-file ()
  (interactive)
  (let ((position (point)))
    (find-alternate-file
     ;;(if (file-remote-p (buffer-file-name))
     ;;    (let ((vec (tramp-dissect-file-name (buffer-file-name))))
     ;;      (tramp-make-tramp-file-name
     ;;      "sudo"
     ;;       (tramp-file-name-user vec)
     ;;       (tramp-file-name-host vec)
     ;;       (tramp-file-name-localname vec)))
       (concat "/sudo::"(buffer-file-name)))
    (goto-char position)))

;; set shortcut
(global-set-key "\C-xw" 'sudo-edit-current-file)
