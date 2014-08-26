(req-package cc-mode
:require (company company-c-headers company-cmake)

:config
(progn
         (add-to-list 'company-backends 'company-c-headers)))
