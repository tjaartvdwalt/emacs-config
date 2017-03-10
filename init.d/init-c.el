(use-package cc-mode
  :require(google-c-style) ;;flycheck-google-cpplint)

  :config
  (progn
    (define-key c-mode-map (kbd "C-,") 'ff-find-other-file)
    (define-key c++-mode-map (kbd "C-,") 'ff-find-other-file)
    ;; (add-to-list 'company-backends 'company-c-headers))

  ;; This mode hook runs astyle on the buffer after every save. Similar
  ;; to the way go-mode works for emacs
  (add-hook 'c-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'astyle-buffer nil 'buffer-local)))

  (add-hook 'c++-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'astyle-buffer nil
                        'buffer-local)))

  ;; add c++ headers for completion in includes 
  ;; (add-to-list
  ;;  'company-c-headers-path-system "/usr/include/c++/4.9.2/")

  ;; (eval-after-load 'flycheck
  ;;   '(progn
  ;;      (require 'flycheck-google-cpplint)
  ;;      ;; Add Google C++ Style checker.
  ;;      ;; In default, syntax checked by Clang and Cppcheck.
  ;;      (flycheck-add-next-checker 'c/c++-clang
  ;;                                 'c/c++-googlelint 'append)
  ;;      (add-hook 'c-mode-common-hook 'google-set-c-style)
  ;;      (add-hook 'c-mode-common-hook 'google-make-newline-indent))
  ))
