(defun format-buffer ()
  "Applies Javascript standard-format to the current buffer.
https://www.npmjs.com/package/standard-format"
  (interactive)
  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (standard-format-region (point-min) (point-max))
  (goto-char temp-point))


(defun standard-format-region (pmin pmax)
  (shell-command-on-region pmin pmax
                           "standard-format -"
                           (current-buffer) t
                           (get-buffer-create "*standard-format Errors*") t))

(format-buffer)
(standard-format-region (point-min) (point-max))
