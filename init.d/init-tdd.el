(use-package tdd
  :config
  (progn
    (defcustom tdd-test-function 'smart-compile)
    (add-hook 'js-mode-hook 'tdd-mode)
    ;; (add-hook 'js-mode-hook
    ;;           (lambda ()
    ;;             (set (make-local-variable 'compile-command)
    ;;                  (format "jest"))))
    ))


;; (defun runjest ()
;;   "Run jest with tdd"
;;   (let ((errbuf (get-buffer-create "*TDD Errors*")))
;;     (call-process "jest" nil nil)))
