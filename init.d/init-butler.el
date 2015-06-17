(req-package butler
  :config ( progn
            add-to-list 'butler-server-list
             '(jenkins "tjaart.mooo.com"
                       (server-address . "https://tjaart.mooo.com:8090")
                       (auth-file . "~/.authinfo"))))
