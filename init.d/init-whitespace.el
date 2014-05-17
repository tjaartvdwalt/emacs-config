;; make whitespace-mode use just basic coloring
(req-package whitespace
  :init
  (global-set-key "\C-cw" 'whitespace-mode)
  )
;;(global-whitespace-mode 1)
