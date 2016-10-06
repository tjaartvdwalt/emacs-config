;; (defun standardfmt ()
;;   "Format the current buffer using standard-format."
;;   (interactive)
;;   (let ((errbuf (get-buffer-create "*StandardFormat Errors*")))
;;     (with-current-buffer errbuf
;;       (erase-buffer))

;;     (if (zerop (call-process "standard-format" nil errbuf nil "-w" (buffer-file-name)))
;;         (progn
;;           (revert-buffer t t)
;;           (if errbuf (kill-error-buffer errbuf)))
;;       (progn
;;         (revert-buffer t t)
;;         (display-buffer errbuf)))))


;; (defun kill-error-buffer (errbuf)
;;   (let ((win (get-buffer-window errbuf)))
;;     (if win
;;         (quit-window t win)
;;       (kill-buffer errbuf))))
