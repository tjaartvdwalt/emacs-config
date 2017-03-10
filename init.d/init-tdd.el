(req-package tdd
  :config (progn
            (add-hook 'js-mode-hook 'tdd-mode)
            (add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'runjest nil t)))))

(defun runjest ()
  "Run jest with tdd"
  (let ((errbuf (get-buffer-create "*TDD Errors*")))
    (tdd-waiting)
    (if (eq 0 (call-process "jest" nil errbuf))
        (tdd-success)
      (tdd-failure))
))
