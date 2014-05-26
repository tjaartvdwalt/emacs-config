;; Swap c-x and c-u. This is useful for dvorak layout since u is
;; on the home row and x is difficult to reach
(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])


;; use ibuffer instead of buffer-menu
(substitute-key-definition
           'list-buffers 'ibuffer global-map global-map)

;; C-/ is undo and M-/ as redo
(global-unset-key (kbd "M-/"))

(global-set-key "\C-cy" 'toggle-window-split)
(global-set-key "\C-x." 'mulled/edit-trailing-edges)
(global-set-key "\C-x," 'mulled/edit-leading-edges)


;; make whitespace-mode use just basic coloring
(global-set-key "\C-cw" 'whitespace-mode)
;;(global-whitespace-mode 1)

;; set return to use indent
(define-key global-map (kbd "RET") 'newline-and-indent)

                                        ; Optionally bind a shortcut for your new RSS reader.

(global-set-key "\C-cf" 'find-grep-dired)
(global-set-key "\C-cd" 'find-name-dired)

;; (global-set-key (kbd "C-M-t") (lambda () (interactive) (swap-with 'down)))
;; (global-set-key (kbd "C-M-c") (lambda () (interactive) (swap-with 'up)))
;; (global-set-key (kbd "C-M-h") (lambda () (interactive) (swap-with 'left)))
;; (global-set-key (kbd "C-M-n") (lambda () (interactive) (swap-with 'right)))

;; (global-set-key (kbd "M-t") (lambda () (interactive) (enlarge-window 1)))
;; (global-set-key (kbd "M-c") (lambda () (interactive) (-1 enlarge-window)))
;; (global-set-key (kbd "M-h") (lambda () (interactive) (enlarge-window -1 t)))
;; (global-set-key (kbd "M-n") (lambda () (interactive) (enlarge-window 1 t)))
;; (global-set-key (kbd "C-M-m") 'toggle-window-split)

;; (global-set-key (kbd "M-t") 'windmove-down)
;; (global-set-key (kbd "M-c") 'windmove-up)
;; (global-set-key (kbd "M-h") 'windmove-left)
;; (global-set-key (kbd "M-n") 'windmove-right)

;;(global-set-key (kbd "\C-cu") 'yas-insert-snippet)
;;(global-set-key (kbd "\C-ce") 'yas-visit-snippet-file)

;;(global-set-key (kbd "\C-ce") 'aya-create)
;;(global-set-key (kbd "\C-cu") 'aya-expand)

(global-set-key (kbd "\C-Ci") 'indent-whole-buffer)
(global-set-key (kbd "\C-Co") 'occur)
