;; (use-package key-chord
;;   :config ( progn
;;             (key-chord-mode 1)
;;             ;; Max time delay between two key presses to be considered a key chord
;;             (setq key-chord-two-keys-delay 0.2)

;;             ;; Max time delay between two presses of the same key to be considered a key chord.
;;             ;; Should normally be a little longer than `key-chord-two-keys-delay'.
;;             (setq key-chord-one-key-delay 0.4)
;;             (key-chord-define-global "rr" 'er/expand-region)))
