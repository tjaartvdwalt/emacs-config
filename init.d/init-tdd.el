(use-package tdd
  :config
  (progn
    (add-hook 'js-mode-hook 'tdd-mode)
    (add-hook 'js-mode-hook
              (lambda ()
                (set (make-local-variable 'compile-command)
                     (format "jest")))))) 
(custom-set-variables
 '(tdd-test-function (quote (smart-compile))))

;; (defun runjest ()
;;   "Run jest with tdd"
;;   (let ((errbuf (get-buffer-create "*TDD Errors*")))
;;     (call-process "jest" nil nil)))
