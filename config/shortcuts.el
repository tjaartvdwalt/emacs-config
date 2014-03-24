;; Swap c-x and c-u and m-x and m-u ... useful for dvorak layout
(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])

;; Use ibuffer instead of buffer-menu
(substitute-key-definition
           'list-buffers 'ibuffer global-map global-map)




(global-set-key "\C-x." 'mulled/edit-trailing-edges)
(global-set-key "\C-x," 'mulled/edit-leading-edges)

;; Set a shortcut for compile
(global-set-key "\C-xc" 'compile)

;; make whitespace-mode use just basic coloring
(global-set-key "\C-cw" 'whitespace-mode)
;;(global-whitespace-mode 1)

;; set return to use indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;;Set a shortcut for mu4e
(global-set-key "\C-cr" 'mu4e)

                                        ; Optionally bind a shortcut for your new RSS reader.
(global-set-key (kbd "C-c n") 'newsticker-treeview)

;; set shortcut
(global-set-key "\C-xw" 'sudo-edit-current-file)

(global-set-key "\C-cj" 'webjump)

(global-set-key "\C-cf" 'find-grep-dired)
(global-set-key "\C-cd" 'find-name-dired)

(global-set-key "\C-cc" 'column-enforce-mode)

(global-set-key "\C-cs" 'ispell-buffer)
(global-set-key "\C-cn" 'ispell-word)
;;(global-set-key "\C-ci" 'ispell-minor-mode)

;;(global-set-key (kbd "M-9") 'skype--anything-command)
;;(global-set-key (kbd "C-c s r") 'skype--open-recent-chat-buffer-command)
;;(global-set-key (kbd "C-c s m") 'skype--chat-mode-message-command)
;;(global-set-key (kbd "C-c s s") 'skype--message-mode-send-command)

(global-set-key (kbd "C-M-t") (lambda () (interactive) (swap-with 'down)))
(global-set-key (kbd "C-M-c") (lambda () (interactive) (swap-with 'up)))
(global-set-key (kbd "C-M-h") (lambda () (interactive) (swap-with 'left)))
(global-set-key (kbd "C-M-n") (lambda () (interactive) (swap-with 'right)))

(global-set-key (kbd "M-t") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "M-c") (lambda () (interactive) (-1 enlarge-window)))
(global-set-key (kbd "M-h") (lambda () (interactive) (enlarge-window -1 t)))
(global-set-key (kbd "M-n") (lambda () (interactive) (enlarge-window 1 t)))
(global-set-key (kbd "C-M-m") 'toggle-window-split)

;; (global-set-key (kbd "M-t") 'windmove-down)
;; (global-set-key (kbd "M-c") 'windmove-up)
;; (global-set-key (kbd "M-h") 'windmove-left)
;; (global-set-key (kbd "M-n") 'windmove-right)

;;(global-set-key (kbd "\C-cu") 'yas-insert-snippet)
;;(global-set-key (kbd "\C-ce") 'yas-visit-snippet-file)

;;(global-set-key (kbd "\C-ce") 'aya-create)
;;(global-set-key (kbd "\C-cu") 'aya-expand)

(global-set-key (kbd "\C-Co") 'occur)
(global-set-key (kbd "\C-Ci") 'indent-whole-buffer)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
