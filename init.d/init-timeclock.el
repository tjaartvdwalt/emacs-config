(use-package timeclock
  :bind (("C-t i" . timeclock-in)
          ("C-t o" . timeclock-out)
           ("C-t r" . timeclock-reread-log)
           ("C-t c" . timeclock-change)
           ("C-t t" . timeclock-visit-timelog))
  :config((timeclock-mode-line-displa t))
)
