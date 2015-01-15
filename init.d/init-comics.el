(req-package comics
  :bind(("C-c k l" . comics-favorites-list-comics)
        ("C-c k l" . comics-fetch-unread-favorites))
  :config (progn (setq comics-use-separate-comic-directories t)))
