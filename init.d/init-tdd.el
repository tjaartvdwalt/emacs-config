(use-package tdd
  :config
  (progn
(custom-set-variables
 '(tdd-test-function (quote (smart-compile)))))) 


;; (defun runjest ()
;;   "Run jest with tdd"
;;   (let ((errbuf (get-buffer-create "*TDD Errors*")))
;;     (call-process "jest" nil nil)))
