(req-package rebox2
  :config(progn (add-hook 'emacs-lisp-mode-hook (lambda ()
 (set (make-local-variable 'rebox-style-loop) '(25 17 21))
 (rebox-mode 1)))
(add-hook 'c-mode-hook (lambda ()
 (set (make-local-variable 'rebox-style-loop) '(25 17 21))
 (rebox-mode 1)))))
