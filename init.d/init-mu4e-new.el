(req-package mu4e
  :require (gnus-dired)
  :config
  (progn
    ;;Set a shortcut for mu4e
    (global-set-key "\C-ce" 'mu4e)
    (define-key mu4e-main-mode-map (kbd "C") 'helm-mu-contacts)
    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    (setq mail-user-agent 'mu4e-user-agent)
    (setq mu4e-maildir "~/Maildir")
    (setq mu4e-use-fancy-chars t)
    (setq mu4e-view-show-images t)
    (setq mu4e-view-prefer-html t)
    (setq message-kill-buffer-on-exit t)
    (setq mu4e-update-interval 300)

    (setq mu4e-view-show-images t
          mu4e-show-images t
          mu4e-view-image-max-width 800)


    ;; (setq mu4e-headers-fields
    ;;       '((:human-date  . 24)
    ;;         (:flags       . 6)
    ;;         (:from        . 22)
    ;;         (:to          . 22)
    ;;         (:subject     . nil)))

    (add-to-list 'mu4e-view-actions
                 '("bView in browser" . mu4e-msgv-action-view-in-browser) t)
    (add-to-list 'mu4e-headers-actions
                 '("bView in browser" . mu4e-action-view-in-browser) t)
    (add-to-list 'mu4e-headers-actions
                 '("sMark as Spam" . mu4e-mark-for-spam) t)
    (add-to-list 'mu4e-view-actions
                 '("sMark as Spam" . mu4e-view-mark-for-spam) t)
    (add-to-list 'mu4e-headers-actions
                 '("iMove to Inbox" . mu4e-mark-for-inbox) t)
    (add-to-list 'mu4e-view-actions
                 '("iMove to Inbox" . mu4e-view-mark-for-inbox) t)
    (let*((draft "test")))
    (setq   mu4e-maildir-shortcuts
            '((draft)     . ?a))
    ;;           ("/tjaart@tjaart.co.za/INBOX" . ?i)
    ;;           ("/work"        . ?w)
    ;;           ("/sent"        . ?s)))

    ;; let* binds the var directly after computing its local value.
    (setq mu4e-bookmarks
          `(
            (,"flag:inbox"  "Messages in Inbox"    ?i)
            (,"flag:unread"        "Unread messages"      ?u)
            (,"flag:sent"          "Sent messages"        ?S)
            (,"flag:trashed"       "Trashed messages"     ?T)
            (,"flag:draft"         "Draft messages"       ?d)))


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
                       (mu4e-refile-folder     . "/tjaart@tjaart.co.za/Archives")
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
                       (mu4e-refile-folder     . "/tajvdw@gmail.com/Archives")
                       (my-mu4e-spam-folder    . "/tajvdw@gmail.com/Spam")
                       (mu4e-drafts-folder     . "/tajvdw@gmail.com/Drafts")
                       (mu4e-sent-folder       . "/tajvdw@gmail.com/Sent")
                       (mu4e-trash-folder      . "/tajvdw@gmail.com/Trash")
                       (user-mail-address      . "tajvdw@gmail.com")
                       (mu4e-compose-signature . "Tjaart van der Walt\nwww.tjaart.co.za" )
                       (setq mu4e-sent-messages-behavior 'delete)))))))
