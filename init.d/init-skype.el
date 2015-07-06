(req-package skype
  :require (helm)
  :config(progn (setq skype--my-user-handle "rkwtavdw")
                (defvar skype--com-handlers 'skype--com-handlers-py)
                (skype--init)))
