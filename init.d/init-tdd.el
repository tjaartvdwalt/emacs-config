(use-package tdd
  :config
  (progn
    (use-package js)
    (add-hook 'js-mode-hook 'tdd-mode)
    (add-hook 'js-mode-hook
              (lambda ()
                (set (make-local-variable 'compile-command)
                     ("jest")))
              )))

;; (defun runjest ()
;;   "Run jest with tdd"
;;   (let ((errbuf (get-buffer-create "*TDD Errors*")))
;;     (call-process "jest" nil nil)))
