;;; package --- summary
;;; Commentary:
;;; Code:

;; this script configures our elpa repositories, and supplies a
;; convenient method to install packages from elpa
(load "~/.emacs.d/elpa" 1)

;; install req-package manually, everything else gets installed with req-package
(elpa-install 'req-package)

;; load manually installed packages
(add-to-list 'load-path "~/.emacs.d/manual/")

;; require load-dir. this loads all files in the given dirs.
(require 'req-package)
(use-package load-dir
  :ensure load-dir
  :init (progn
          (load-dir-one "~/.emacs.d/functions")
          (load-dir-one "~/.emacs.d/init.d")
          ))

;; show details in *Messages* buffer
(setq req-package-verbose 1)

;; actually load the packages
(req-package-finish)

(provide 'init)
