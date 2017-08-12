;; make whitespace-mode use just basic coloring
(use-package whitespace
  :bind ("C-c w" . whitespace-mode)
  :config
  (global-set-key "\C-cw" 'whitespace-mode)
  )
;;(global-whitespace-mode 1)
