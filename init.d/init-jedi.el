(req-package jedi
 :config (progn
  (add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)))
