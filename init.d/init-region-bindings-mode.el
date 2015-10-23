(req-package region-bindings-mode
  :config((progn
            (region-bindings-mode-enable)
            (define-key region-bindings-mode-map "r" 'er/expand-region)
            (define-key region-bindings-mode-map "w" 'mark-whole-buffer))))
