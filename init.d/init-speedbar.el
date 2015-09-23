(req-package speedbar
  :bind ("C-c s" . speedbar-disp))


(defun speedbar-disp()
  "Format the current buffer according to the standardfmt tool."
  (call-process "i3-msg" nil nil nil "workspace 4:emacs; resize shrink left" nil))

(speedbar-disp)
