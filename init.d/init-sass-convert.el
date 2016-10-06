(add-hook 'scss-mode-hook (lambda ()
              (add-hook 'after-save-hook 'scssfmt t t)))

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
