(defun lzz-includes (include-dirs)
  (setq include-string "")
  (while include-dirs
    (setq include-string (concat include-string " -I " (pop include-dirs) " ")))
  (message include-string))

(defun lzz ()
  (interactive)
  "Run lzz on the current (C++) buffer.
This will create/update the corresponding header file."

  ;; ;; Define our vars
  (setq include-dirs
        '("/usr/include/c++/4.9.1/x86_64-unknown-linux-gnu/"
          "/usr/include/c++/4.9.1/x86_64-unknown-linux-gnu/bits/"
          "/usr/include/linux/"
          "/usr/include/c++/4.9.1/"
          "/usr/include/c++/4.9.1/tr1/"
          "/usr/include/"))
  (setq include-string (lzz-includes include-dirs))

  ;; save the buffer
  (save-current-buffer)

  ;; run bash command
  (setq string-command (concat "lzz " include-string
                         " -E " (buffer-file-name)
                         " && "
                         "lzz " include-string
                         " -e " (buffer-file-name)))
  (shell-command string-command)
  (message string-command)
  ;; revert the buffer to reflect any changes
  (revert-buffer t t))
