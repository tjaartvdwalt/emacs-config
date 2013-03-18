;************* Configure package repositories *******************
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("sunrise_commander" .
      "http://joseito.republika.pl/sunrise-commander/"))
(add-to-list 'package-archives
    '("melpa" .
      "http://melpa.milkbox.net/packages/"))

;;(add-to-list 'package-archives
;;    '("tromney" .
;;      "http://tromey.com/elpa"))

(package-initialize)
