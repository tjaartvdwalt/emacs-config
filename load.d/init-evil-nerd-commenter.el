(use-package evil-nerd-commenter
  :bind ("M-;" . hydra-commenter/body)
  )

(defhydra hydra-commenter (:color teal
                            :hint nil)
  "
_l_: comment or uncomment lines
_q_: quick comment or uncomment to the line
_c_: copy and comment lines
_p_: comment or uncomment paragraphs
_r_: comment or uncomment region
_v_: toggle invert comment line by line
_._: copy and comment operator
_\\_: comment operator
")
