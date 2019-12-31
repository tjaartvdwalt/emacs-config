(defun tajvdw-setup-main-fonts (default-height variable-pitch-height)
  "Set up default fonts.

Use DEFAULT-HEIGHT for default face and VARIABLE-PITCH-HEIGHT
for variable-pitch face."
  (set-face-attribute 'default nil
                      :family "monospace"
                      :height default-height)
  (set-face-attribute 'variable-pitch nil
                      :family "sans-serif"
                      :height variable-pitch-height
                      :weight 'regular))

(defun tajvdw-set-fonts ()
  "Set your font size based on your screen resolution"
  (interactive)
  (when window-system
	(if (> (x-display-pixel-width) 2000)
		(progn (tajvdw-setup-main-fonts 160 150)
			   (message "Resolution > 2000 pixels"))
	  (progn (tajvdw-setup-main-fonts 180 160)
			 (message "Resolution < 2000 pixels")))))
