;; Disable menu-bar by default, but provide keybinding to quickly enable
(req-package menu-bar-mode
  :bind(("C-c m m" . menu-bar-mode))

  :config((menu-bar-mode nil)))
