(defun astyle-buffer ()
  (interactive
   "Applies Javascript standard-format to the current buffer.
https://www.npmjs.com/package/standard-format")

  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (astyle-region (point-min) (point-max))
  (goto-char temp-point))
;; (cond ((eq total-chars (point-max)) )
;;(t (goto-line temp-line))
