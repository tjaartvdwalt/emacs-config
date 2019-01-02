(use-package evil-nerd-commenter
  :bind ("M-;" . evilnc-comment-or-uncomment-lines)
  )

;; (defhydra hydra-commenter (:hint nil)
;;   "
;; Evil Nerd Commenter:
;; _;_: comment or uncomment lines
;; _q_: quick comment or uncomment to the line
;; _c_: copy and comment lines
;; _p_: comment or uncomment paragraphs
;; _r_: comment or uncomment region
;; _v_: toggle invert comment line by line
;; "
;;   (";" evilnc-comment-or-uncomment-lines)
;;   ("q" evilnc-quick-comment-or-uncomment-to-the-line)
;;   ("c" evilnc-copy-and-comment-lines)
;;   ("p" evilnc-comment-or-uncomment-paragraphs)
;;   ("r" comment-or-uncomment-region)
;;   ("v" evilnc-toggle-invert-comment-line-by-line))
