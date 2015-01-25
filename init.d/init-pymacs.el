;; Because we have rope set up for our Python2
;; environment, which is no longer default in arch, we have to
;; have the following line in our .bashrc:
;; export PYMACS_PYTHON=python2
(req-package pymacs
  :config(progn
           (autoload 'pymacs-apply "pymacs")
           (autoload 'pymacs-call "pymacs")
           (autoload 'pymacs-eval "pymacs" nil t)
           (autoload 'pymacs-exec "pymacs" nil t)))
