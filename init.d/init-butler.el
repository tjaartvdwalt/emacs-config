(req-package butler
(add-to-list 'butler-server-list
             '(jenkins ""
                       (server-address . "https://tjaart.mooo.com:8090")
                       (auth-file . "~/.authinfo"))))
