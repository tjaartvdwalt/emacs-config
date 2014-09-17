(req-package cc-mode
  :require (company company-c-headers company-cmake google-c-style flycheck-google-cpplint)

  :bind
  (("C-c t" . astyle))


   :config
   (progn
     (add-to-list 'company-backends 'company-c-headers))

   (eval-after-load 'flycheck
     '(progn
        (require 'flycheck-google-cpplint)
        ;; Add Google C++ Style checker.
        ;; In default, syntax checked by Clang and Cppcheck.
        (flycheck-add-next-checker 'c/c++-clang
                                   'c/c++-googlelint 'append)
        (add-hook 'c-mode-common-hook 'google-set-c-style)
        (add-hook 'c-mode-common-hook 'google-make-newline-indent))))
