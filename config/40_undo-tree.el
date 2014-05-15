(elpa-install 'undo-tree)
(require 'undo-tree)
(global-undo-tree-mode)

;; Remap undo-tree-redo to M-/ since this fits the emacs paradigm better
;; of using C-/ and M-/ for opposing commands
(define-key undo-tree-map (kbd "C-?") nil)

;; C-/ is undo and M-/ as redo
(global-unset-key (kbd "M-/"))
(define-key undo-tree-map (kbd "M-/") 'undo-tree-redo)

;; undefine the extra keys that does not get used. These just fill
;; the shortcut space
(define-key undo-tree-map (kbd "C-_") nil)
(define-key undo-tree-map (kbd "M-_") nil)

