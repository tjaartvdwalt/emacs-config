(defun astyle-buffer ()
  (interactive
   "Applies astyle to the current buffer.
    Returning the point to the correct position is not trivial.
    I use an imprecise but hopefully useful method.
    If the buffer size remained the same, return point
    to the same position, otherwise return point to the
    start of the current line")

  (setq total-chars (point-max))
  (setq temp-line (line-number-at-pos))
  (setq temp-point (point))
  (astyle-region (point-min) (point-max))
  (goto-char temp-point))
  ;; (cond ((eq total-chars (point-max)) )
        ;;(t (goto-line temp-line))

  (defun astyle-region (pmin pmax)
    (shell-command-on-region pmin pmax
                             "astyle"
                             (current-buffer) t
                             (get-buffer-create "*Astyle Errors*") t))
