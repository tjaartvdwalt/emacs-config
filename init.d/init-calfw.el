(req-package calfw
  :require (calfw-org calfw-ical)
  :bind ("C-c m k" . cfw:open-calender-buffer)
  :config (progn
            (cfw:open-ical-calendar "https://www.google.com/calendar/ical/tjaart%40tjaart.co.za/private-578554fb506f63442f2f53cc4ee2c144/basic.ics")))
