;; Disable menu-bar by default, but provide keybinding to quickly enable
(req-package menu-bar-mode
  :bind(("C-c m m" . menu-bar-mode))

  :init((menu-bar-mode -1)))
