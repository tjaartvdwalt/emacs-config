(req-package cc-mode
  :require(company company-c-headers company-cmake google-c-style flycheck-google-cpplint)

  :config
  (progn
    (global-set-key "\C-cu" 'ff-find-other-file)
    (add-to-list 'company-backends 'company-c-headers))

  ;; This mode hook runs astyle on the buffer after every save. Similar
  ;; to the way go-mode works for emacs
  (add-hook 'c-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'astyle-buffer nil 'buffer-local)))

  (add-hook 'c++-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'astyle-buffer nil 'buffer-local)))



  (eval-after-load 'flycheck
    '(progn
       (require 'flycheck-google-cpplint)
       ;; Add Google C++ Style checker.
       ;; In default, syntax checked by Clang and Cppcheck.
       (flycheck-add-next-checker 'c/c++-clang
                                  'c/c++-googlelint 'append)
       (add-hook 'c-mode-common-hook 'google-set-c-style)
       (add-hook 'c-mode-common-hook 'google-make-newline-indent))))
