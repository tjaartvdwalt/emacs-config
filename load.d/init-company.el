(use-package company
  ;; :hook
  ;; (after-init-hook . global-company-mode)
  :config
  (global-company-mode)

    ;; '(company-backends
    ;;  (quote
    ;;    (company-ispell company-abbrev company-bbdb company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
    ;;      (company-dabbrev-code company-gtags company-etags company-keywords)
    ;;      company-oddmuse company-dabbrev)))

  (add-to-list 'company-backends ('company-ispell) t)
  (add-to-list 'company-backends 'company-yasnippet t)
  (setq company-idle-delay 0))

(use-package company-web
  :config
    (add-to-list 'company-backends 'company-web-html)

  )
