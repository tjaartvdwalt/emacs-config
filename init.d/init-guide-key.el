(req-package guide-key
  :diminish guide-key-mode
  :config
  (progn
    (setq guide-key/idle-delay 0.5)
    ;;(setq guide-key/text-scale-amount -1)
    (setq guide-key/recursive-key-sequence-flag t)
    (setq guide-key/guide-key-sequence '("C-c"))
    (setq guide-key/popup-window-position 'bottom)
    ;; (setq guide-key/guide-key-sequence '("C-x" "C-c"))
    (guide-key-mode 1))

  ;; :init(progn(
  ;;             )))
  )
