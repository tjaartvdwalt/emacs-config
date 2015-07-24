(req-package ac-ispell
  :require (autocomplete)
  :config (progn
            (ac-ispell-setup)
            (add-hook 'text-mode-hook 'ac-ispell-ac-setup)))

