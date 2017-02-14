;;; package --- This file contains shortcuts that do not correspond to any init file
;;; Commentary:

;; Swap c-x and c-u.  This is useful for dvorak layout since u is
;; on the home row and x is difficult to reach
(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])

;; use ibuffer instead of buffer-menu
(substitute-key-definition
 'list-buffers 'ibuffer global-map global-map)

;; (global-set-key "\C-cy" 'toggle-window-split)

;; set return to use indent
;; (define-key global-map (kbd "RET") 'newline-and-indent)
 
;; my custom navigation functions
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<C-prior>"))
(global-unset-key (kbd "<C-next>"))

(global-set-key (kbd "<C-left>") 'backward-word)
(global-set-key (kbd "<C-right>") 'forward-word)
(global-set-key (kbd "<C-up>") 'backward-paragraph)
(global-set-key (kbd "<C-down>") 'forward-paragraph)
(global-set-key (kbd "<C-prior>") 'beginning-of-buffer)
(global-set-key (kbd "<C-next>") 'end-of-buffer)

(global-set-key (kbd "C-,") 'er/expand-region)


;; Convenient mark functions
(global-set-key (kbd "\C-c SPC p") 'mark-paragraph)
(global-set-key (kbd "\C-c SPC f") 'mark-function)
(global-set-key (kbd "\C-c SPC w") 'mark-word)
(global-set-key (kbd "\C-c SPC s") 'mark-sexp)
(global-set-key (kbd "\C-c SPC b") 'mark-whole-buffer)

(global-set-key "\C-cdf" 'find-grep-dired)
(global-set-key "\C-cdd" 'find-name-dired)

;; wraps lines in a paragraph to word-wrap characters
(global-set-key (kbd "\C-c u u") 'fill-paragraph)
(global-set-key (kbd "\C-c u i") 'indent-whole-buffer)

(global-unset-key (kbd "\M-\-"))
(global-set-key (kbd "\M-\+") 'text-scale-increase)
(global-set-key (kbd "\M-\-") 'text-scale-decrease)

(global-set-key (kbd "\C-c m s") 'speedbar)

(global-unset-key (kbd "M-DEL"))
(global-set-key (kbd "M-DEL") 'kill-whole-line)
