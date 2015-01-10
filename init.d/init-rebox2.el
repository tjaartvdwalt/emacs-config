(req-package rebox2
  :config(progn (add-hook 'emacs-lisp-mode-hook (lambda ()
 (rebox-mode 1)))
(add-hook 'c++-mode-hook (lambda ()
 (rebox-mode 1)))))
