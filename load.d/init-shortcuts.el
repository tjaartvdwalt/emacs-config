;;; package --- This file contains shortcuts that do not correspond to any init file
;;; Commentary:

;; use ibuffer instead of buffer-menu
(substitute-key-definition
  'list-buffers 'ibuffer global-map global-map)

;; (global-set-key "\C-cy" 'toggle-window-split)

;; set return to use indent
;; (define-key global-map (kbd "RET") 'newline-and-indent)

;; my custom navigation functions
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<M-left>"))
(global-unset-key (kbd "<M-right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<C-prior>"))
(global-unset-key (kbd "<C-next>"))

(global-set-key (kbd "<C-left>") 'backward-word)
(global-set-key (kbd "<C-right>") 'forward-word)
(global-set-key (kbd "<C-prior>") 'backward-list)
(global-set-key (kbd "<C-next>") 'forward-list)
(global-set-key (kbd "<M-left>") 'backward-sexp)
(global-set-key (kbd "<M-right>") 'forward-sexp)
(global-set-key (kbd "<C-up>") 'backward-paragraph)
(global-set-key (kbd "<C-down>") 'forward-paragraph)
(global-set-key (kbd "<M-up>") 'backward-list)
(global-set-key (kbd "<M-down>") 'forward-list)
(global-set-key (kbd "<C-prior>") 'beginning-of-buffer)
(global-set-key (kbd "<C-next>") 'end-of-buffer)

;; wraps lines in a paragraph to word-wrap characters
;; (global-set-key (kbd "\C-c i") 'indent-whole-buffer)

(global-unset-key (kbd "\M-\-"))
(global-set-key (kbd "\M-\+") 'font-size-increase)
(global-set-key (kbd "\M-\-") 'text-size-decrease)
(global-set-key (kbd "\M-0") 'text-size-decrease)

(global-unset-key (kbd "M-DEL"))
(global-set-key (kbd "M-DEL") 'kill-whole-line)

(global-unset-key (kbd "M-%"))
(global-unset-key (kbd "C-M-%"))
(global-set-key (kbd "M-%") 'vr/replace)
(global-set-key (kbd "C-M-%") 'vr/query-replace)


(global-set-key (kbd "C-=") 'hydra-ctrl-c/body)

;; (defhydra hydra-navigate (:hint nil)
;;   "
;; Navigate:
;; _<left>_ : Left
;; _<right>_: Right
;; _<up>_   : Up
;; _<down>_ : Down
;; "
;;   ("<left>" backward-word)
;;   ("<right>" forward-word)
;;   ("<up>" backward-list)
;;   ("<down>" forward-list)
;;   ("r" comment-or-uncomment-region)
;;   ("v" evilnc-toggle-invert-comment-line-by-line))

(defhydra hydra-smerge (:hint t)
  "
_a_ Keep All
_l_ Keep Lower
_u_ Keep Upper
_<return>_ Keep Current
"
  ("a" smerge-keep-all :exit t)
  ("l" smerge-keep-lower :exit t)
  ("u" smerge-keep-upper :exit t)
  ("<return>" smerge-keep-current :exit t))

(defhydra hydra-zoom (:hint t)
  "
_+_ Zoom in
_-_ Zoom out
"

("+" text-scale-increase)
("-" text-scale-decrease))

(defhydra hydra-ctrl-c (:hint nil)
  "
ctrl-c:
_e_: Exand Region
_l_: Linum mode
_m_: Multiple Cursors
_n_: Navigate
_o_: Origami
_p_: Projectile
_s_: Smerge
_w_: Whitespace Mode
_z_: Zoom
"

  ("e" er/expand-region :exit t)
  ("l" global-linum-mode :exit t)
  ("m" hydra-multiple-cursors/body :exit t)
  ("n" hydra-navigate/body :exit t)
  ("o" hydra-origami/body :exit t)
  ("p" hydra-projectile/body :exit t)
  ("s" hydra-smerge/body :exit t)
  ("w" whitespace-mode :exit t)
  ("z" hydra-zoom/body :exit t))
