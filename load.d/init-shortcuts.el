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
(global-set-key (kbd "\C-c i") 'indent-whole-buffer)

(global-unset-key (kbd "\M-\-"))
(global-set-key (kbd "\M-\+") 'text-scale-increase)
(global-set-key (kbd "\M-\-") 'text-scale-decrease)

(global-unset-key (kbd "M-DEL"))
(global-set-key (kbd "M-DEL") 'kill-whole-line)

(global-unset-key (kbd "M-%"))
(global-unset-key (kbd "C-M-%"))
(global-set-key (kbd "M-%") 'vr/replace)
(global-set-key (kbd "C-M-%") 'vr/query-replace)


(global-set-key (kbd "C-=") 'hydra-ctrl-c/body)

(defhydra hydra-navigate (:hint nil)
  "
Navigate:
_<left>_: Left
_<right>_: Right
_<up>_: Up
_<down>_: Down
"
  ("<left>" backward-word)
  ("<right>" forward-word)
  ("<up>" backward-list)
  ("<down>" forward-list)
  ("r" comment-or-uncomment-region)
  ("v" evilnc-toggle-invert-comment-line-by-line))

(defhydra hydra-ctrl-c (:hint nil)
  "
ctrl-c:
_n_: Navigate
"
  ("n" hydra-navigate/body)
  ("q" evilnc-quick-comment-or-uncomment-to-the-line)
  ("c" evilnc-copy-and-comment-lines)
  ("p" evilnc-comment-or-uncomment-paragraphs)
  ("r" comment-or-uncomment-region)
  ("v" evilnc-toggle-invert-comment-line-by-line))
