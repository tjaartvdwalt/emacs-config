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

;; (elpa-install 'color-theme)
;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-arjen)

(elpa-install 'solarized-theme)


;; dired+
(elpa-install 'dired+)
(require 'dired+)
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-aBhl --group-directories-first")

(toggle-diredp-find-file-reuse-dir 1)


;; Broken in repo
;; gimme
;; (elpa-install 'gimme)
;; (require 'gimme)

;; auto-complete
(elpa-install 'auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)
     (ac-config-default)
     (global-auto-complete-mode t)
     (setq ac-auto-start 2)

;; ruby end
(elpa-install 'ruby-end)
(require 'ruby-end)

;; json mode
(elpa-install 'json-mode)
(require 'json-mode)

;; enclose
(elpa-install 'enclose)
(require 'enclose)
     (enclose-mode t)

;; shell switcher
(shell-switcher-mode t)

(define-key shell-switcher-mode-map (kbd "C-=")
	    'shell-switcher-switch-buffer)
(define-key shell-switcher-mode-map (kbd "C-x 4 =")
	    'shell-switcher-switch-buffer-other-window)
(define-key shell-switcher-mode-map (kbd "C-M-=")
	    'shell-switcher-new-shell)

;; browse-url-dwim
(elpa-install 'browse-url-dwim)
(require 'browse-url-dwim)
     (browse-url-dwim-mode 1)
     (setq browse-url-dwim-always-confirm-extraction nil)

;; mark-down-mode
(elpa-install 'markdown-mode)
(require 'markdown-mode)

(elpa-install 'markdown-mode+)
(require 'markdown-mode+)

;; RVM
(elpa-install 'rvm)
(require 'rvm)
     (rvm-use-default)

;; js2-mode
;;(elpa-install 'js2-mode)
;;(require 'js2-mode)

;; rspec-mode
(elpa-install 'rspec-mode)
(require 'rspec-mode)

;; header2
(elpa-install 'header2)
(require 'header2)

;; inf-ruby
(elpa-install 'inf-ruby)
(require 'inf-ruby)

;; tea-time
(elpa-install 'tea-time)
(require 'tea-time)

;; mark-down-mode
(elpa-install 'yaml-mode)
(require 'yaml-mode)

(elpa-install 'coffee-mode)
(require 'coffee-mode)
(elpa-install 'sudo-ext)
(require 'sudo-ext)

;;(elpa-install 'bookmark+)
;;(require 'bookmark+)

;; (elpa-install 'persp-mode)
;; (persp-mode t)

(elpa-install 'emacs-eclim)
(require 'eclim)
(global-eclim-mode)
(require 'eclimd)
(setq eclimd-default-workspace "~/my_dev/eclipse_workspace")
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(elpa-install 'company)

(elpa-install 'emacsd-tile)
(load "~/.emacs.d/config/emacsd-tile")

;; column-enforce-mode
(elpa-install 'column-enforce-mode)
(require 'column-enforce-mode)

(elpa-install 'conkeror-minor-mode)
(autoload 'conkeror-minor-mode "conkeror-minor-mode")

