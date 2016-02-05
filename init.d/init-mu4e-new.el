(req-package mu4e
  :require (gnus-dired)
  :config
  (progn
    ;;Set a shortcut for mu4e
    (global-set-key "\C-ce" 'mu4e)

    (define-key mu4e-main-mode-map (kbd "C") 'helm-mu-contacts)
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    (setq mu4e-maildir "~/Maildir/")


    (add-to-list 'mu4e-headers-actions
                 '("sMark as Spam" . mu4e-mark-for-spam) t)

    (defun mu4e-mark-for-spam (msg)
      "Move the message to the spam folder."
      (interactive)
      (mu4e-mark-set 'move (my-mu4e-find-folder (my-mu4e-get-message-account msg) "my-mu4e-spam-folder")))

          (setq mu4e-bookmarks
            `(
              (,("mu4e-inbox-folder") "Messages in Inbox"      ?i)
              (,(concat trash) "Trashed messages" ?T)
              (,(concat draft) "Draft messages" ?d))
       )

    
    (setq mu4e-context-policy 'ask)
    (setq mu4e-contexts
          `( ,(make-mu4e-context
               :name "atjaart@tjaart.co.za"
               :enter-func (lambda () (mu4e-message "Switch to: tjaart@tjaart.co.za"))
               ;; leave-func not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tjaart@tjaart.co.za")))
               :vars '((mu4e-inbox-folder      . "/tjaart@tjaart.co.za/INBOX")
                       (my-mu4e-refile-folder  . "/tajvdw@gmail.com/Archives")
                       (my-mu4e-spam-folder    . "/tjaart@tjaart.co.za/Spam")
                       (mu4e-drafts-folder     . "/tjaart@tjaart.co.za/Drafts")
                       (mu4e-sent-folder       . "/tjaart@tjaart.co.za/Sent")
                       (mu4e-trash-folder      . "/tjaart@tjaart.co.za/Trash")
                       (user-mail-address      . "tjaart@tjaart.co.za")
                       (mu4e-compose-signature . "Tjaart van der Walt\nwww.tjaart.co.za")
                       ;; don't save messages to Sent Messages, Gmail/IMAP takes care of this
                       (setq mu4e-sent-messages-behavior 'delete)))

             ,(make-mu4e-context
               :name "btajvdw@gmail.com"
               :enter-func (lambda () (mu4e-message "Switch to: tajvdw@gmail.com"))
               ;; leave-fun not defined
               :match-func (lambda (msg)
                             (when msg
                               (mu4e-message-contact-field-matches msg
                                                                   :to "tajvdw@gmail.com")))
               :vars '((mu4e-inbox-folder      . "/tajvdw@gmail.com/INBOX")
                       (my-mu4e-refile-folder  . "/tajvdw@gmail.com/Archives")
                       (my-mu4e-spam-folder    . "/tajvdw@gmail.com/Spam")
                       (mu4e-drafts-folder     . "/tajvdw@gmail.com/Drafts")
                       (mu4e-sent-folder       . "/tajvdw@gmail.com/Sent")
                       (mu4e-trash-folder      . "/tajvdw@gmail.com/Trash")
                       (user-mail-address      . "tajvdw@gmail.com")
                       (mu4e-compose-signature . "Tjaart van der Walt\nwww.tjaart.co.za" )
                       (setq mu4e-sent-messages-behavior 'delete)))))))
