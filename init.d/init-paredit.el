(req-package paredit
  :require (paredit-everywhere paredit-menu)
  :init
  (progn
    (add-hook 'prog-mode-hook 'paredit-everywhere-mode)))
