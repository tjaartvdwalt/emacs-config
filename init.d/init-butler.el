(req-package butler
(add-to-list 'butler-server-list
             '(jenkins "tjaart-jenkins"
                       (server-address . "https://tjaart.mooo.com:8090")
                       (auth-file . "~/.authinfo"))))
