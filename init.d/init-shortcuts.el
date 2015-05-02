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
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Convenient mark functions
(global-set-key [(control ?\.)] 'mark-paragraph) 
;; (global-set-key (kbd "\C-\\. p") )
;; (global-set-key (kbd "\C-\\. f") 'mark-function)
;; (global-set-key (kbd "\C-\\. w") 'mark-word)


(global-set-key "\C-cdf" 'find-grep-dired)
(global-set-key "\C-cdd" 'find-name-dired)

;; wraps lines in a paragraph to word-wrap characters
(global-set-key (kbd "\C-c u u") 'fill-paragraph)
(global-set-key (kbd "\C-c u i") 'indent-whole-buffer)

(global-unset-key (kbd "\M-\\-"))
(global-set-key (kbd "\M-\\+") 'text-scale-increase)
(global-set-key (kbd "\M-\\-") 'text-scale-decrease)


(setq word-wrap 80)
;;(global-set-key (kbd "\C-Co") 'occur)

