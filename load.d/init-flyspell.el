(use-package flyspell
  :diminish flyspell-mode
  :config
  (add-hook 'text-mode-hook 'flyspell-mode)
  (use-package flyspell-correct-ivy))

(provide 'init-flyspell)
;;; init-flyspell ends here
