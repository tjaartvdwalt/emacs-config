(req-package butler
  :config (progn
            (add-to-list 'butler-server-list
             '(jenkins "JENKINS"
                       (server-address . "http://tjaart.mooo.com:8090")
                       (auth-file . "~/.authinfo.gpg")))))
