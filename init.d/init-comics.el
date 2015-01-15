(req-package comics
  :bind(("C-c k l" . comics-favorites-list-comics))
  :config (progn (setq comics-use-separate-comic-directories t)))
