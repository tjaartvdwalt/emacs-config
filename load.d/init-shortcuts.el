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

;;(global-unset-key (kbd "\M-\-"))
;;(global-set-key (kbd "\M-\+") 'font-size-increase)
;;(global-set-key (kbd "\M-\-") 'text-size-decrease)
;;(global-set-key (kbd "\M-0") 'text-size-default)

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

(defhydra hydra-smerge ()
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

(defhydra hydra-zoom ()
  "
_+_ Zoom in
_-_ Zoom out
_0_ Zoom default
"

  ("+" font-size-increase :exit nil)
  ("-" font-size-decrease :exit nil)
  ("0" font-size-default :exit nil))

(defhydra hydra-counsel ()
  "
_a_ ag
_f_ find-file
_g_ git
_j_ git-grep
_l_ locate
_r_ recentf
"

  ("a" counsel-ag  :exit true)
  ("f" counsel-find-file  :exit true)
  ("g" counsel-git :exit true)
  ("j" counsel-git-grep :exit true)
  ("l" counsel-locate :exit true)
  ("r" counsel-recentf :exit true))


(defhydra hydra-web-mode ()
  "
_f_ fold-or-unfold
_h_ buffer-highlight
_TAB_ buffer-indent
"

  ("f" web-mode-fold-or-unfold  :exit nil)
  ("h" web-mode-buffer-highlight :exit nil)
  ("<tab>" web-mode-buffer-indend :exit nil))

(defhydra hydra-ctrl-c ()
  "
ctrl-c:
_b_: beacon-blink
_c_: counsel
_e_: exand-region
_i_: format-all-buffer
_h_: whitespace-mode
_k_: kill-sexp
_l_: linum-mode
_m_: multiple-cursors
_n_: navigate
_o_: origami
_p_: projectile
_s_: smerge
_v_: magit-buffer
_w_: web-mode
_z_: zoom
"

  (pretty-hydra-define hydra-ctrl-c
    (:color amaranth :quit-key "q" )
    ("Minor Modes"
	 (		("l" global-linum-mode :toggle t)
			("h" whitespace-mode :toggle t))
	 "Other"

	 (("b" beacon-blink :exit t)
	 ("c" hydra-counsel/body :exit t)
	 ("e" er/expand-region :exit t)
	 ("i" format-all-buffer :exit t)
	 ("k" sp-kill-sexp :exit t)
	 ("m" hydra-multiple-cursors/body :exit t)
	 ("n" hydra-navigate/body :exit t)
	 ("o" hydra-origami/body :exit t)
	 ("p" hydra-projectile/body :exit t)
	 ("s" hydra-smerge/body :exit t)
	 ("v" magit-status :exit t)
	 ("w" hydra-web-mode/body :exit t)
	 ("z" hydra-zoom/body :exit t))

	 ))
