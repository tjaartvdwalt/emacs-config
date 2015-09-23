(req-package speedbar
  :bind ("C-c s" . speedbar-disp))


(defun speedbar-disp()
  "Format the current buffer according to the standardfmt tool."
  (speedbar)
  (call-process "i3-msg" nil nil nil "resize shrink left")
  (call-process "i3-msg" nil nil nil "resize shrink left"))
