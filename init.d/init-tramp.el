(req-package tramp
  :require (sudo-ext)
  :init
  (progn
    (defun sudo-edit-current-file ()
      (interactive)
      (let ((position (point)))
        (find-alternate-file
         (concat "/sudo::"(buffer-file-name)))
        (goto-char position)))

    ;; set shortcut
    (global-set-key "\C-xw" 'sudo-edit-current-file)
    ))
