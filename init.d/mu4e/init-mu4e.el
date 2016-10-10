(req-package mu4e
  :require (gnus-dired)
  :config
  (progn
    (require 'mu4e-contrib)
    ;;Set a shortcut for mu4e
    (global-set-key "\C-ce" 'mu4e)
    ;; (define-key mu4e-main-mode-map (kbd "C") 'helm-mu-contacts)
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    (setq mail-user-agent 'mu4e-user-agent)
    (setq mu4e-maildir "~/Maildir")
    ;; (setq mu4e-use-fancy-chars t)
    (setq mu4e-view-show-images nil)
    (setq mu4e-view-prefer-html nil)
    (setq message-kill-buffer-on-exit t)
    (setq mu4e-update-interval 300)
    (setq mu4e-headers-results-limit 1000)
    (setq mu4e-view-show-addresses t)

    ;;rename files when moving - NEEDED FOR MBSYNC
    (setq mu4e-change-filenames-when-moving t)

    (setq mu4e-view-show-images t
          mu4e-show-images t
          mu4e-view-image-max-width 800)

    (add-hook 'mu4e-compose-mode-hook
              (defun cpb-compose-setup ()
                "Outgoing mails get format=flowed."
                (use-hard-newlines t 'guess)))

    (add-hook 'mu4e-mark-execute-pre-hook
              (lambda (mark msg)
                (cond ((member mark '(refile)) (mu4e-action-retag-message msg "-\\Inbox")))))

    (define-key mu4e-compose-mode-map (kbd "M-RET") 'fill-paragraph)


    ;; ;; Make html text more readable
    ;; (setq shr-color-visible-luminance-min 70)
    ;; (setq mu4e-html2text-command 'mu4e-shr2text)
    (setq mu4e-headers-fields
          '((:human-date  . 12)
            (:subject     . 50)
            (:flags       . 5)
            (:from        . 22)
            (:to          . 22)))

    (add-to-list 'mu4e-view-actions
                 '("bViewInBrowser" . mu4e-action-view-in-browser) t)

    (setq mu4e-bookmarks
          `(
            ;; (,"maildir:"           "Inbox messages"       ?i)
            (,"flag:unread AND NOT flag:trashed AND NOT my-mu4e-spam-folder"        "Unread messages"      ?u)
            (,"flag:sent"          "Sent messages"        ?S)
            (,"flag:trashed"       "Trashed messages"     ?T)
            (,"flag:draft"         "Draft messages"       ?d)))

    (setq message-send-mail-function 'message-send-mail-with-sendmail)
    (setq  sendmail-program "/usr/bin/msmtp")

    ;; Parse the year field from the message date.
    (defun my-mu4e-get-message-year(msg)
      (let ((year (decode-time (mu4e-message-field msg :date))))
        (message (number-to-string (nth 5 year)))))

    ;; archive messages to the folder corresponding to the current year
    (setq mu4e-refile-folder
          (lambda (msg)
            (message (concat (message my-mu4e-refile-folder) "/." (my-mu4e-get-message-year msg)))))

    (setq mu4e-context-policy 'ask-if-none)
    (setq mu4e-contexts
          `( ,(make-mu4e-context
               :name "ttjaart@tjaart.co.za"
               :enter-func (lambda () (mu4e-message "Switch to: tjaart@tjaart.co.za"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tjaart@tjaart.co.za")))

               :vars '((mu4e-drafts-folder     . "/tjaart@tjaart.co.za/Drafts")
                       (mu4e-inbox-folder      . "/tjaart@tjaart.co.za/Inbox")
                       (my-mu4e-refile-folder  . "/tjaart@tjaart.co.za/Archives")
                       (my-mu4e-spam-folder    . "/tjaart@tjaart.co.za/Spam")
                       (mu4e-sent-folder       . "/tjaart@tjaart.co.za/Sent")
                       (mu4e-trash-folder      . "/tjaart@tjaart.co.za/Trash")

                       (user-mail-address      . "tjaart@tjaart.co.za")
                       (my-mu4e-sent-account   . "tjaart")
                       (mu4e-compose-signature . "Tjaart van der Walt\nwww.tjaart.co.za")
                       ;; don't save messages to Sent Messages, Gmail/IMAP takes care of this
                       (setq mu4e-sent-messages-behavior 'delete)
                       (setq message-sendmail-extra-arguments (list '"-a tjaart@tjaart.co.za"))
                       (mu4e-maildir-shortcuts .
                                               (("/tjaart@tjaart.co.za/Drafts"    . ?d)
                                                ("/tjaart@tjaart.co.za/INBOX"     . ?i)
                                                ("/tjaart@tjaart.co.za/Spam"      . ?l)
                                                ("/tjaart@tjaart.co.za/Sent"      . ?s)
                                                ("/tjaart@tjaart.co.za/Trash"     . ?t)))))

             ,(make-mu4e-context
               :name "gtajvdw@gmail.com"
               :enter-func (lambda () (mu4e-message "Switch to: tajvdw@gmail.com"))
               ;; leave-fun not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tajvdw@gmail.com")))
               :vars '((mu4e-inbox-folder      . "/tajvdw@gmail.com/Inbox")
                       (my-mu4e-refile-folder  . "/tajvdw@gmail.com/Archives")
                       (my-mu4e-spam-folder    . "/tajvdw@gmail.com/[Gmail]/.Spam")
                       (mu4e-drafts-folder     . "/tajvdw@gmail.com/[Gmail]/.Drafts")
                       (mu4e-sent-folder       . "/tajvdw@gmail.com/[Gmail]/.Sent Mail")
                       (mu4e-trash-folder      . "/tajvdw@gmail.com/[Gmail]/.Trash")
                       (user-mail-address      . "tajvdw@gmail.com")
                       (mu4e-compose-signature . "Tjaart van der Walt\nwww.tjaart.co.za" )
                       (setq mu4e-sent-messages-behavior 'delete)
                       (setq message-sendmail-extra-arguments (list '"-a tajvdw@gmail.com"))
                       (mu4e-maildir-shortcuts .
                                               (("/tajvdw@gmail.com/Drafts"    . ?d)
                                                ("/tajvdw@gmail.com/Inbox"     . ?i)
                                                ("/tajvdw@gmail.com/Spam"      . ?l)
                                                ("/tajvdw@gmail.com/Sent"      . ?s)
                                                ("/tajvdw@gmail.com/Trash"     . ?t)))))

             ,(make-mu4e-context
               :name "stjaart@getsolmates.com"
               :enter-func (lambda () (mu4e-message "Switch to: tjaart@getsolmates.com"))
               ;; leave-fun not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tjaart@getsolmates.com")))
               :vars '((mu4e-inbox-folder      . "/tjaart@getsolmates.com/Inbox")
                       (my-mu4e-refile-folder  . "/tjaart@getsolmates.com/Archives")
                       (my-mu4e-spam-folder    . "/tjaart@getsolmates.com/[Gmail]/.Spam")
                       (mu4e-drafts-folder     . "/tjaart@getsolmates.com/[Gmail]/.Drafts")
                       (mu4e-sent-folder       . "/tjaart@getsolmates.com/[Gmail]/.Sent Mail")
                       (mu4e-trash-folder      . "/tjaart@getsolmates.com/[Gmail]/.Trash")
                       (user-mail-address      . "tjaart@getsolmates.com")
                       (mu4e-compose-signature . "Tjaart van der Walt\n\nSoftware Developer" )
                       (setq mu4e-sent-messages-behavior 'delete)
                       (setq message-sendmail-extra-arguments (list '"-a tjaart@getsolmats.com"))
                       (mu4e-maildir-shortcuts .
                                               (("/tjaart@getsolmates.com/Drafts"    . ?d)
                                                ("/tjaart@getsolmates.com/Inbox"     . ?i)
                                                ("/tjaart@getsolmates.com/Spam"      . ?l)
                                                ("/tjaart@getsolmates.com/Sent"      . ?s)
                                                ("/tjaart@getsolmates.com/Trash"     . ?t)))))

             ,(make-mu4e-context
               :name "utav9wc@mail.umsl.edu"
               :enter-func (lambda () (mu4e-message "Switch to: tav9wc"))
               ;; leave-fun not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tav9wc@mail.umsl.edu")))
               :vars '((mu4e-inbox-folder      . "/tav9wc@mail.umsl.edu/Inbox")
                       (my-mu4e-refile-folder  . "/tav9wc@mail.umsl.edu/Archives")
                       (my-mu4e-spam-folder    . "/tav9wc@mail.umsl.edu/Junk E-Mail")
                       (mu4e-drafts-folder     . "/tav9wc@mail.umsl.edu/Drafts")
                       (mu4e-sent-folder       . "/tav9wc@mail.umsl.edu/Sent")
                       (mu4e-trash-folder      . "/tav9wc@mail.umsl.edu/Trash")
                       (user-mail-address      . "tav9wc@mail.umsl.edu")
                       (smtpmail-smtp-server "smtp.office365.com")
                       (smtpmail-stream-type starttls)
                       (smtpmail-smtp-service 587)
                       (mu4e-compose-signature . "Tjaart van der Walt" )
                       (setq mu4e-sent-messages-behavior 'delete)
                       (setq message-sendmail-extra-arguments (list '"-a tav9wc@mail.umsl.edu"))
                       (mu4e-maildir-shortcuts .
                                               (("/tav9wc@mail.umsl.edu/Drafts"    . ?d)
                                                ("/tav9wc@mail.umsl.edu/Inbox"     . ?i)
                                                ("/tav9wc@mail.umsl.edu/Junk E-Mail" . ?l)
                                                ("/tav9wc@mail.umsl.edu/Sent"      . ?s)
                                                ("/tav9wc@mail.umsl.edu/Trash"     . ?t)))))))))
