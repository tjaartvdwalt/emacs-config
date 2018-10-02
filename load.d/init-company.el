(use-package company
  ;; :hook
  ;; (after-init-hook . global-company-mode)
    :bind (("C-=" . company-other-backend)
          ("C-M-c" . dumb-jump-back))

  :config
  (global-company-mode)

    ;; '(company-backends
    ;;  (quote
    ;;    (company-ispell company-abbrev company-bbdb company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
    ;;      (company-dabbrev-code company-gtags company-etags company-keywords)
    ;;      company-oddmuse company-dabbrev)))

  (setq company-idle-delay 0)
  (add-to-list 'company-backends 'company-ispell))

(use-package company-web
  :config
    (add-to-list 'company-backends '(company-web-html company-yasnippet)))

(use-package company-jedi
:config
(add-to-list 'company-backends '(company-jedi company-files company-yasnippet)))
