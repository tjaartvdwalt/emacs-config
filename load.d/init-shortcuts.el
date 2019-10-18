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

(pretty-hydra-define smerge-hydra
  (:color amaranth :quit-key "C-g" :title "smerge" )
  (""
    (("a" smerge-keep-all :exit t)
  ("l" smerge-keep-lower :exit t)
  ("u" smerge-keep-upper :exit t)
  ("<return>" smerge-keep-current :exit t))))


(pretty-hydra-define zoom-hydra
  (:color amaranth :quit-key "C-g" :title "Zoom" )
  (""
    (("+" font-size-increase "Zoom in" :exit nil)
   ("-" font-size-decrease "Zoom out" :exit nil)
   ("0" font-size-default "Defaultn" :exit nil))))


(pretty-hydra-define hydra-ctrl-c
  (:color amaranth :quit-key "q" )
  ("Minor Modes"
   (("l" global-linum-mode :toggle t)
	("h" whitespace-mode :toggle t))
   "Other"

   (("b" beacon-blink :exit t)
	("c" counsel-hydra/body :exit t)
	("e" er/expand-region :exit t)
	("i" format-all-buffer :exit t)
	("k" sp-kill-sexp :exit t)
	("m" multiple-cursors-hydra/body :exit t)
	("n" hydra-navigate/body :exit t)
	("o" hydra-origami/body :exit t)
	("p" projectile-hydra/body "projectile" :exit t)
	("s" smerge-hydra/body :exit t)
	("v" magit-status :exit t)
	("w" hydra-web-mode/body :exit t)
	("z" hydra-zoom/body "zoom" :exit t))))
