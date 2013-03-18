;************* Abandoned Plugins *******************

;; nXhtml
;; (load "~/.emacs.d/nxhtml/autostart")


;;;; Rsense
;;   (setq rsense-home (expand-file-name "~/.emacs.d/downloaded/rsense-0.3"))
;;   (add-to-list 'load-path "~/.emacs.d/downloaded/rsense-0.3/etc")
;;   (require 'rsense)
;;;; Set shortcut
;;   (add-hook 'ruby-mode-hook
;;             (lambda ()
;;               (local-set-key (kbd "C-c .") 'rsense-complete)))


;************* Configure gnus for gmail *******************
;; configure gnus for gmail
;; for these settings to work you need the following line in ~/.authinfo:
;; machine imap.gmail.com login username@gmail.com password secret port 993
;;
;; For this configuration to work you also need to install msmtp
;; sudo apt-get install msmtp
;(setq gnus-select-method '(nnimap "tjaart"
;				  (nnimap-address "imap.gmail.com")
;				  (nnimap-server-port 993)
;				  (nnimap-stream ssl)))
;
;(setq gnus-secondary-select-methods
;      '((nnimap "tajvdw"
;		(nnimap-address "imap.gmail.com")
;		(nnimap-server-port 993)
;		(nnimap-stream ssl)
;		(nnimap-authinfo-file "~/.authinfo"))))
;
;(setq message-send-mail-function 'message-send-mail-with-sendmail)
;(setq sendmail-program "/usr/bin/msmtp")
;(setq message-sendmail-extra-arguments '("-a" "tjaart"))
;(setq mail-host-address "tjaart.co.za")
;(setq user-full-name "Tjaart van der Walt")
;(setq user-mail-address "tjaart@tjaart.co.za")
;(setq gnus-permanently-visible-groups ".*")
;(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
;(setq gnus-show-threads 1)
;
;(setq gnus-parameters
;      '(("nnimap\+tjaart:INBOX"
;	 (display . all)
;	 (posting-style
;	  (name "Tjaart van der Walt")
;	  (address "tjaart@tjaart.co.za")
;	  (signature-file "~/.signature"))
;	  (expiry-wait . never))))
;
;
;(setq gnus-use-trees t)

;************* Abandoned Plugins *******************

;; nXhtml
;; (load "~/.emacs.d/nxhtml/autostart")


;;;; Rsense
;;   (setq rsense-home (expand-file-name "~/.emacs.d/downloaded/rsense-0.3"))
;;   (add-to-list 'load-path "~/.emacs.d/downloaded/rsense-0.3/etc")
;;   (require 'rsense)
;;;; Set shortcut
;;   (add-hook 'ruby-mode-hook
;;             (lambda ()
;;               (local-set-key (kbd "C-c .") 'rsense-complete)))


;************* Configure gnus for gmail *******************
;; configure gnus for gmail
;; for these settings to work you need the following line in ~/.authinfo:
;; machine imap.gmail.com login username@gmail.com password secret port 993
;;
;; For this configuration to work you also need to install msmtp
;; sudo apt-get install msmtp
;(setq gnus-select-method '(nnimap "tjaart"
;				  (nnimap-address "imap.gmail.com")
;				  (nnimap-server-port 993)
;				  (nnimap-stream ssl)))
;
;(setq gnus-secondary-select-methods
;      '((nnimap "tajvdw"
;		(nnimap-address "imap.gmail.com")
;		(nnimap-server-port 993)
;		(nnimap-stream ssl)
;		(nnimap-authinfo-file "~/.authinfo"))))
;
;(setq message-send-mail-function 'message-send-mail-with-sendmail)
;(setq sendmail-program "/usr/bin/msmtp")
;(setq message-sendmail-extra-arguments '("-a" "tjaart"))
;(setq mail-host-address "tjaart.co.za")
;(setq user-full-name "Tjaart van der Walt")
;(setq user-mail-address "tjaart@tjaart.co.za")
;(setq gnus-permanently-visible-groups ".*")
;(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
;(setq gnus-show-threads 1)
;
;(setq gnus-parameters
;      '(("nnimap\+tjaart:INBOX"
;	 (display . all)
;	 (posting-style
;	  (name "Tjaart van der Walt")
;	  (address "tjaart@tjaart.co.za")
;	  (signature-file "~/.signature"))
;	  (expiry-wait . never))))
;
;
;(setq gnus-use-trees t)
