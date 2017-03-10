(use-package electric-case
  :require cc-mode
:config
(progn
  (add-hook 'c-mode-common-hook 'electric-case-c-init)
  (add-hook 'java-mode-hook 'electric-case-java-init)
  ;; Don't set the color of an identifier being typed
  (setq electric-case-pending-overlay nil)))
(provide 'init-electric-case)
