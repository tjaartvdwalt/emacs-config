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
;;; formatter ends here
(defcustom standardfmt-command "snazzy"
  "The 'gofmt' command.
Some users may replace this with 'goimports'
from https://github.com/bradfitz/goimports."
  :type 'string
  :group 'go)


(defun standardfmt ()
  "Format the current buffer according to the gofmt tool."
  (interactive)
  (let ((tmpfile (make-temp-file "standardfmt" nil ".js"))
        (patchbuf (get-buffer-create "*Standard patch*"))
        (errbuf (if gofmt-show-errors (get-buffer-create "*Standard Errors*")))
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
      (if (zerop (call-process standardfmt-command nil errbuf nil "--format" tmpfile))
          (progn
            (if (zerop (call-process-region (point-min) (point-max) "diff" nil patchbuf nil "-n" "-" tmpfile))
                (message "Buffer is already gofmted")
              (go--apply-rcs-patch patchbuf)
              (message "Applied gofmt"))
            (if errbuf (gofmt--kill-error-buffer errbuf)))
        (message "Could not apply gofmt")
        (if errbuf (gofmt--process-errors (buffer-file-name) tmpfile errbuf)))

      ;; (kill-buffer patchbuf)
      ;; (delete-file tmpfile)
      )))

(defun go--apply-rcs-patch (patch-buffer)
  "Apply an RCS-formatted diff from PATCH-BUFFER to the current buffer."
  (let ((target-buffer (current-buffer))
        ;; Relative offset between buffer line numbers and line numbers
        ;; in patch.
        ;;
        ;; Line numbers in the patch are based on the source file, so
        ;; we have to keep an offset when making changes to the
        ;; buffer.
        ;;
        ;; Appending lines decrements the offset (possibly making it
        ;; negative), deleting lines increments it. This order
        ;; simplifies the forward-line invocations.
        (line-offset 0))
    (save-excursion
      (with-current-buffer patch-buffer
        (goto-char (point-min))
        (while (not (eobp))
          (unless (looking-at "^\\([ad]\\)\\([0-9]+\\) \\([0-9]+\\)")
            (error "invalid rcs patch or internal error in go--apply-rcs-patch"))
          (forward-line)
          (let ((action (match-string 1))
                (from (string-to-number (match-string 2)))
                (len  (string-to-number (match-string 3))))
            (cond
             ((equal action "a")
              (let ((start (point)))
                (forward-line len)
                (let ((text (buffer-substring start (point))))
                  (with-current-buffer target-buffer
                    (decf line-offset len)
                    (goto-char (point-min))
                    (forward-line (- from len line-offset))
                    (insert text)))))
             ((equal action "d")
              (with-current-buffer target-buffer
                (go--goto-line (- from line-offset))
                (incf line-offset len)
                (go--delete-whole-line len)))
             (t
              (error "invalid rcs patch or internal error in go--apply-rcs-patch")))))))))

(defun gofmt--process-errors (filename tmpfile errbuf)
  (with-current-buffer errbuf
    (if (eq gofmt-show-errors 'echo)
        (progn
          (message "%s" (buffer-string))
          (gofmt--kill-error-buffer errbuf))
      ;; Convert the gofmt stderr to something understood by the compilation mode.
      (goto-char (point-min))
      (insert "gofmt errors:\n")
      (while (search-forward-regexp (concat "^\\(" (regexp-quote tmpfile) "\\):") nil t)
        (replace-match (file-name-nondirectory filename) t t nil 1))
      (compilation-mode)
      (display-buffer errbuf))))
