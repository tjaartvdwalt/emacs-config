(defun mu-setup-main-fonts (default-height variable-pitch-height)
  "Set up default fonts.

Use DEFAULT-HEIGHT for default face and VARIABLE-PITCH-HEIGHT
for variable-pitch face."
  (set-face-attribute 'default nil
                      :family "Source Code Pro"
                      :height default-height)
  (set-face-attribute 'variable-pitch nil
                      :family "Fira Sans"
                      :height variable-pitch-height
                      :weight 'regular))

(when window-system
  (if (> (x-display-pixel-width) 2000)
      (mu-setup-main-fonts 150 160)
    (mu-setup-main-fonts 180 160)))
