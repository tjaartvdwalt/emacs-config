(use-package tdd
  :config
  (progn
    (add-hook 'js-mode-hook 'tdd-mode)
    (custom-set-variables
     '(tdd-test-function (smart-compile)))
    ))

    ;; (defun runjest ()
    ;;   "Run jest with tdd"
    ;;   (let ((errbuf (get-buffer-create "*TDD Errors*")))
    ;;     (call-process "jest" nil nil)))
