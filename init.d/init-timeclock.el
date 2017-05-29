(use-package timeclock
  :bind (("C-c t i" . timeclock-in)
          ("C-c t o" . timeclock-out)
           ("C-c t r" . timeclock-reread-log)
           ("C-c t c" . timeclock-change)
           ("C-c it t" . timeclock-visit-timelog))
  :config(progn
           (timeclock-mode-line-display t)
           (display-time-mode t)
           ))
