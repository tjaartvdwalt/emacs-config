(defgroup formatter ()
  "Free keys."
  :group 'convenience)

(cl-defstruct formatter command modes)

(setq formatter-formatters
      (list
       (make-formatter
        :command "astyle"
        :modes '(c-mode c++-mode))

       (make-formatter
        :command "snazzy --format --stdin"
        :modes '(js-mode js2-mode js3-mode))
       ))

(defun get-formatter-command ()
  (dolist (f formatter-formatters)
    (if (member major-mode (formatter-modes f))
        (setq command (formatter-command f))))
  command)

 ;;;###autoload
(defun formatter-format-buffer ()
  "Format the current buffer with the apropriate formatter."
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))

  (formatter-format-region (point-min) (point-max))
  (goto-char temp-point))

(defun formatter-format-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           (get-formatter-command)
                           t t
                           (get-buffer-create "*Formatter Errors*") t))


(provide 'formatter)
(defcustom standardfmt-command "snazzy --format")
;;; formatter ends here
(defun standardfmt ()
  "Format the current buffer according to the gofmt tool."
  (interactive)
  (let ((tmpfile (make-temp-file "gofmt" nil ".go"))
        (patchbuf (get-buffer-create "*Gofmt patch*"))
        (errbuf (if gofmt-show-errors (get-buffer-create "*Gofmt Errors*")))
        (coding-system-for-read 'utf-8)
        (coding-system-for-write 'utf-8))

    (save-restriction
      (widen)
      (if errbuf
          (with-current-buffer errbuf
            (setq buffer-read-only nil)
            (erase-buffer)))
      (with-current-buffer patchbuf
        (erase-buffer))

      (write-region nil nil tmpfile)

      ;; We're using errbuf for the mixed stdout and stderr output. This
      ;; is not an issue because gofmt -w does not produce any stdout
      ;; output in case of success.
      (if (zerop (call-process "snazzy --format" nil errbuf nil "-w" tmpfile))
          (progn
            (if (zerop (call-process-region (point-min) (point-max) "diff" nil patchbuf nil "-n" "-" tmpfile))
                (message "Buffer is already gofmted")
              (go--apply-rcs-patch patchbuf)
              (message "Applied gofmt"))
            (if errbuf (gofmt--kill-error-buffer errbuf)))
        (message "Could not apply gofmt")
        (if errbuf (gofmt--process-errors (buffer-file-name) tmpfile errbuf)))

      (kill-buffer patchbuf)
      (delete-file tmpfile))))
