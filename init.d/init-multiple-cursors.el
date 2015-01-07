(req-package multiple-cursors
  :bind (("C-c c e" . mc/edit-lines)
         ("C-c c n" . mc/mark-next-like-this)
         ("C-c c p" . mc/mark-previous-like-this)
         ("C-c c a" . mc/mark-all-like-this)
         ("C-c c w" . mc/mark-all-words-like-this)
         ("C-c c w" . mc/mark-all-dwim))

:config(progn(smartrep-define-key
                  global-map "C-c c"
                '(("d" . 'mc/mark-all-dwim)))))
