;; for some reason adding the after-save-hook to the major mode does not want to work (similar to what I did in init-standard-format.el)

(add-hook 'after-save-hook (lambda ()
                             (when (eq major-mode 'scss-mode)
                               (progn 'scssfmt))))

(defun scssfmt ()
  "Format the current buffer using sass-convert."
  (interactive)
  (let ((errbuf (get-buffer-create "*Sass Convert Errors*")))
    (with-current-buffer errbuf
      (erase-buffer))

    (if (zerop (call-process "sass-convert" nil errbuf nil "-i" (buffer-file-name)))
        (progn
          (revert-buffer t t)
          (if errbuf (kill-error-buffer errbuf)))
      (progn
        (revert-buffer t t)
        (display-buffer errbuf)))))


(defun kill-error-buffer (errbuf)
  (let ((win (get-buffer-window errbuf)))
    (if win
        (quit-window t win)
      (kill-buffer errbuf))))
