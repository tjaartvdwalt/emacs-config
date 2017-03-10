(use-package speedbar
  :bind ("C-c s" . speedbar-disp))

(defun speedbar-disp()
  "Open speedbar, and resize its window."
  (interactive)
  (speedbar)
  (call-process "i3-msg" nil nil nil "resize shrink left")
  (call-process "i3-msg" nil nil nil "resize shrink left"))
