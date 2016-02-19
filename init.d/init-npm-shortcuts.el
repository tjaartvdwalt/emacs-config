(global-set-key (kbd "C-c n p p") 'npm-publish-patch)
(global-set-key (kbd "C-c n p m") 'npm-publish-minor)
(global-set-key (kbd "C-c n p M") 'npm-publish-major)

(defun npm-publish-patch ()  (interactive)(shell-command "npm version patch && npm publish"))
(defun npm-publish-minor ()  (interactive)(shell-command "npm version minor && npm publish"))
(defun npm-publish-major ()  (interactive)(shell-command "npm version major && npm publish"))
(defun standardfmt ()
  "Format the current buffer using standard-format."
  (interactive)
  (let ((errbuf (get-buffer-create "*StandardFormat Errors*")))
    (with-current-buffer errbuf
      (erase-buffer))

    (if (zerop (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name)))
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
