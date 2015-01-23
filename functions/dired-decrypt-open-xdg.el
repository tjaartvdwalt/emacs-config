(defun tmp-filename (filename)
  "Returns the path where the temp file should be saved. It also creates the parent directory.
   The pattern is:
  /tmp/emacs-epa/filename.ext (removing the .gpg at the end)."
  (let ((dir "/tmp/emacs-epa/"))
  (make-directory dir t)
  (set-file-modes dir #o700)
 (concat dir (file-name-nondirectory (file-name-sans-extension filename)))))

(defun decrypt-to-temp (filename)
  "Decrypts the file into the temp file."
  (epa-decrypt-file filename (tmp-filename filename))
  (tmp-filename filename))

(defun dired-decrypt-open-xdg ()
  "Puts everything together"
  (interactive)
  (if (equal (file-name-extension (dired-filename-at-point)) "gpg")
    (browse-url-xdg-open (decrypt-to-temp   (dired-filename-at-point)))
    (browse-url-xdg-open (dired-filename-at-point))))

