(req-package tdd
  :config (progn
            (add-hook 'js-mode-hook 'tdd-mode)
            (add-hook 'js-mode-hook
                      (lambda ()
                        (set (make-local-variable 'compile-command)
                             ("jest")))
                      (defcustom tdd-test-function runjest)
                      ;; (add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'runjest nil t)))
                      ))

  (defun runjest ()
    "Run jest with tdd"
    (let ((errbuf (get-buffer-create "*TDD Errors*")))
      (call-process "jest" nil nil)))
