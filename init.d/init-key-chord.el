(req-package key-chord
 :config ( progn
           (key-chord-mode 1)
(key-chord-define-global "ll" 'er/expand-region)))
