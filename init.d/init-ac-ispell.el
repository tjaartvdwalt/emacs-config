(req-package ac-ispell
  :requires (autocomplete)
  :config (progn
            (ac-ispell-setup)
            (add-hook 'text-mode-hook 'ac-ispell-ac-setup)))

