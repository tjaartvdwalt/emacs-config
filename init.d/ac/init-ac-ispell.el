(req-package ac-ispell
  :require (auto-complete)
  :config (progn
            (ac-ispell-setup)
            (add-hook 'text-mode-hook 'ac-ispell-ac-setup)))

