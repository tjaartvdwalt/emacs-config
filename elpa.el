                                        ;************* Configure package repositories *******************
(require 'package)
(add-to-list 'package-archives
             '("gnu" .
               "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" .
               "http://stable.melpa.org/packages/"))
;; (add-to-list 'package-archives
;;    '("tromney" .
;;      "http://tromey.com/elpa"))
(package-initialize)

;; Its neccesary to update your repos on first install
;; otherwise elpa cannot find the sources. Once the archives
;; dir exists, you will have to manually update
(unless (file-exists-p "~/.emacs.d/elpa/archives")
  (package-refresh-contents))

;; A small function to install packages if they do not exist.
;; This allows the config for each plugin to live together
(defun elpa-install (package)
  (when (not (package-installed-p package))
    (package-install package))
  )
