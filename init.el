;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa
(load "~/.emacs.d/config/00_elpa" 1)

(elpa-install 'init-loader)
(require 'init-loader)
(init-loader-load "~/.emacs.d/config")
