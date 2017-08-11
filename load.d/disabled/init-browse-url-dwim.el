(use-package browse-url-dwim
  ;; :bind ("C-c yf" . )

  :config (progn
            (setq browse-url-dwim-search-url "https://duckduckgo.com/?q=")
            (setq browse-url-dwim-keystrokes '("C-cb"))
            (setq browse-url-dwim-guess-keystrokes '("C-c g"))))
