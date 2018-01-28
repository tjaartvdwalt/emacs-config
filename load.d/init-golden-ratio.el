(use-package golden-ratio
  :delight
  :ensure golden-radio-mode
  ;; :init
  ;; (defcustom golden-ratio-extra-commands
  ;;   '(windmove-left windmove-right windmove-down windmove-up ace-window)
  ;;   "List of extra commands used to jump to other window."
  ;;   :group 'golden-ratio
  ;;   :type '(repeat symbol))

  :config
  (golden-ratio-mode 1)
  (setq golden-ratio-auto-scale t)

  (setq golden-ratio-adjust-factor .8
        golden-ratio-wide-adjust-factor .8))
