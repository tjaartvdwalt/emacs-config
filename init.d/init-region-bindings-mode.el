(req-package
  :config((progn
(define-key region-bindings-mode-map "r" 'er/expand-region)
            (define-key region-bindings-mode-map "w" 'mark-whole-buffer))))
