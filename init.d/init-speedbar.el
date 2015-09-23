(req-package speedbar
  :bind ("C-c s" . speedbar-disp))

;; resize the speedbar window after we open it
(defun speedbar-disp()
  "Format the current buffer according to the standardfmt tool."
  (interactive)
  (speedbar)
  (call-process "i3-msg" nil nil nil "resize shrink left")
  (call-process "i3-msg" nil nil nil "resize shrink left"))
