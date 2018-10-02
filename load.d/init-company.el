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

  (setq company-idle-delay 0)
  (add-to-list 'company-backends 'company-ispell)
(require 'color)

  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     '(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     '(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     '(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     '(company-tooltip-common ((t (:inherit font-lock-constant-face)))))))

(use-package company-web
  :config
    (add-to-list 'company-backends '(company-web-html company-yasnippet)))

(use-package company-jedi
:config
(add-to-list 'company-backends '(company-jedi company-files company-yasnippet)))
