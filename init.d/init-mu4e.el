;; Maybe the config and code should be seperated
(req-package mu4e
  :require (gnus-dired)
  :config
  (progn
    (define-key mu4e-main-mode-map (kbd "C") 'helm-mu-contacts)

    (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
    ;; (add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)
    ;; (add-hook 'mu4e-compose-pre-hook 'helm-mu-contacts)
    ;; define 'N' (the first letter of the description) as the shortcut
    ;; the 't' argument to add-to-list puts it at the end of the list
    (add-to-list 'mu4e-headers-actions
                 '("sMark as Spam" . mu4e-mark-for-spam) t)

    (add-to-list 'mu4e-view-actions
                 '("sMark as Spam" . mu4e-view-mark-for-spam) t)

    (add-to-list 'mu4e-headers-actions
                 '("iMove to Inbox" . mu4e-mark-for-inbox) t)

    (add-to-list 'mu4e-view-actions
                 '("iMove to Inbox" . mu4e-view-mark-for-inbox) t)


    ;; general settings
    (setq mail-user-agent 'mu4e-user-agent ; mu4e as default mail agent
          mu4e-attachment-dir "~/Downloads" ; put attachements in download dir
          mu4e-headers-skip-duplicates t ; skip duplicate email, great for gmail
          mu4e-html2text-command "w3m -dump -T text/html" ; html to text
          mu4e-compose-dont-reply-to-self t ; don't reply to myself
          ;; mu4e-compose-complete-only-personal t ; only personal messages get in the address book
          message-signature "Tjaart van der Walt" ; signature
          message-kill-buffer-on-exit t ; don't keep message buffers around)

    ;; update every 5 minutes
    ;; (setq mu4e-update-interval 300)

    ;; default Maildir
    (setq mu4e-maildir "~/Maildir/")

    ;; set custom header fields
    ;;(setq mu4e-headers-date-format "%Y-%m-%d %H:%M")
    (setq mu4e-headers-fields
          '((:human-date  . 24)
            (:flags       . 6)
            (:from        . 22)
            (:to          . 22)
            (:subject     . nil)))

    ;; (setq ;;mu4e-refile-folder "/tajvdw@gmail.com/Archives"
    ;;  mu4e-sent-folder "/tjaart@tjaart.co.za/Sent"
    ;;  mu4e-drafts-folder "/tjaart@tjaart.co.za/Drafts"
    ;;  ;;mu4e-spam-folder "/tjaart@tjaart.co.za/[Gmail].Spam"
    ;;  mu4e-trash-folder "/tjaart@tjaart.co.za/Trash"
    ;;  user-mail-address "tjaart@tjaart.co.za"
    ;;  user-full-name  "Tjaart van der Walt")

    ;; sending mail
    (setq message-send-mail-function 'message-send-mail-with-sendmail
          sendmail-program "/usr/bin/msmtp"
          user-full-name "Tjaart van der Walt")

    ;; Configuring multiple accounts.
    ;; This variable is a list of lists where the outer list is the email account name
    ;; and the inner list is the directories associated with that account.
    (defvar my-mu4e-account-alist
      '(("tjaart@tjaart.co.za"
         (mu4e-inbox-folder "/tjaart@tjaart.co.za/INBOX")
         (my-mu4e-refile-folder "/tajvdw@gmail.com/Archives")
         (my-mu4e-spam-folder "/tjaart@tjaart.co.za/Spam")
         (mu4e-drafts-folder "/tjaart@tjaart.co.za/Drafts")
         (mu4e-sent-folder "/tjaart@tjaart.co.za/Sent")
         (mu4e-trash-folder "/tjaart@tjaart.co.za/Trash")
         (user-mail-address "tjaart@tjaart.co.za")
         (mu4e-compose-signature "Tjaart van der Walt\nwww.tjaart.co.za")
         ;; don't save messages to Sent Messages, Gmail/IMAP takes care of this
         (setq mu4e-sent-messages-behavior 'delete))

        ("tjaart@solmates.co"
         (mu4e-inbox-folder "/tjaart@solmates.co/INBOX")
         (my-mu4e-refile-folder "/tjaart@solmates.co/Archives")
         (my-mu4e-spam-folder "/tjaart@solmates.co/Spam")
         (mu4e-drafts-folder "/tjaart@solmates.co/Drafts")
         (mu4e-sent-folder "/tjaart@solmates.co/Sent")
         (mu4e-trash-folder "/tjaart@solmates.co/Trash")
         (user-mail-address "tjart@solmates.co")
         (mu4e-compose-signature "Tjaart van der Walt\nwww.tjaart.co.za" )
         (setq mu4e-sent-messages-behavior 'delete))

        ("tajvdw@gmail.com"
         (mu4e-inbox-folder "/tajvdw@gmail.com/INBOX")
         (my-mu4e-refile-folder "/tajvdw@gmail.com/Archives")
         (my-mu4e-spam-folder "/tajvdw@gmail.com/Spam")
         (mu4e-drafts-folder "/tajvdw@gmail.com/Drafts")
         (mu4e-sent-folder "/tajvdw@gmail.com/Sent")
         (mu4e-trash-folder "/tajvdw@gmail.com/Trash")
         (user-mail-address "tajvdw@gmail.com")
         (mu4e-compose-signature "Tjaart van der Walt\nwww.tjaart.co.za" )
         (setq mu4e-sent-messages-behavior 'delete))

        ("tav9wc@mail.umsl.edu"
         (mu4e-inbox-folder "/tav9wc@mail.umsl.edu/INBOX")
         (my-mu4e-refile-folder "/tav9wc@mail.umsl.edu/Archives")
         (my-mu4e-spam-folder "/tav9wc@mail.umsl.edu/Spam")
         (mu4e-drafts-folder "/tav9wc@mail.umsl.edu/Drafts")
         (mu4e-sent-folder "/tav9wc@mail.umsl.edu/Sent")
         (mu4e-trash-folder "/tav9wc@mail.umsl.edu/Trash")
         (mu4e-compose-signature "Tjaart van der Walt\nwww.tjaart.co.za" )
         (user-mail-address "tav9wc@mail.umsl.edu")
         (smtpmail-smtp-server "smtp.office365.com")
         (smtpmail-stream-type starttls)
         (smtpmail-smtp-service 587))))

    ;; archive messages to the folder corresponding to the current year
    (setq mu4e-refile-folder
          (lambda (msg)
            (message (my-mu4e-find-folder (my-mu4e-get-message-account msg) "mu4e-refile-folder"))
            (message (concat (my-mu4e-find-folder (my-mu4e-get-message-account msg) "my-mu4e-refile-folder") "." (my-mu4e-get-message-year msg)))))

    ;;Set a shortcut for mu4e
    (global-set-key "\C-ce" 'mu4e)

    (defun mu4e-msgv-action-view-in-browser (msg)
      "View the body of the message in a web browser."
      (interactive)
      (let ((html (mu4e-msg-field (mu4e-message-at-point t) :body-html))
            (tmpfile (format "%s/%d.html" temporary-file-directory (random))))
        (unless html (error "No html part for this message"))
        (with-temp-file tmpfile
          (insert
           "<html>"
           "<head><meta http-equiv=\"content-type\""
           "content=\"text/html;charset=UTF-8\">"
           html))
        (browse-url (concat "file://" tmpfile))))

    (add-to-list 'mu4e-view-actions
                 '("bView in browser" . mu4e-msgv-action-view-in-browser) t)

    ;; mark a message as spam ind header view
    (defun mu4e-mark-for-spam (msg)
      "Train spambayes, and move the message to the spam folder."
      (interactive)
      (let* ((cmd (format "sb_filter.py -s < %s >/dev/null"
                          (shell-quote-argument (mu4e-msg-field msg :path)))))
        (shell-command cmd))
      (message "Trained as SPAM")
      (mu4e-mark-set 'move (my-mu4e-find-folder (my-mu4e-get-message-account msg) "my-mu4e-spam-folder")))

    ;; mark a message as spam
    (defun mu4e-view-mark-for-spam (msg)
      "Mark messages as spam in the message view."
      (interactive)
      (mu4e~view-in-headers-context (mu4e-mark-for-spam msg))
      (mu4e-view-headers-next))

    ;; mark a message to move it to the inbox (useful for mail that has been accidentally marked as spam)
    (defun mu4e-mark-for-inbox (msg)
      "Move the current message to the Inbox."
      (interactive)
      (let* ((cmd (format "sb_filter.py -g < %s >/dev/null"
                          (shell-quote-argument (mu4e-msg-field msg :path)))))
        (shell-command cmd))
      (message "Trained as HAM")
      (mu4e-mark-set 'move (my-mu4e-find-folder (my-mu4e-get-message-account msg) "mu4e-inbox-folder")))

    ;; move message to inbox
    (defun mu4e-view-mark-for-inbox (msg)
      "Move message to the inbox in message view."
      (interactive)
      (mu4e~view-in-headers-context (mu4e-mark-for-inbox msg))
      (mu4e-view-headers-next))


    ;; Choose account label to feed msmtp -a option based on From header
    ;; in Message buffer; This function must be added to
    ;; message-send-mail-hook for on-the-fly change of From address before
    ;; sending message since message-send-mail-hook is processed right
    ;; before sending message.
    (defun choose-msmtp-account ()
      (if (message-mail-p)
          (save-excursion
            (let*
                ((from (save-restriction
                         (message-narrow-to-headers)
                         (message-fetch-field "from")))
                 (account
                  (cond
                   ((string-match "tjaart@tjaart.co.za" from) "tjaart")
                   ((string-match "tajvdw@gmail.com" from) "tajvdw")
                   ((string-match "tjaart@solmates.co" from) "solmates")
                   ((string-match "tav9wc@mail.umsl.edu" from) "tav9wc"))))
              (setq message-sendmail-extra-arguments (list '"-a" account))))))
    (setq message-sendmail-envelope-from 'header)
    (add-hook 'message-send-mail-hook 'choose-msmtp-account)


    ;; make the `gnus-dired-mail-buffers' function also work on
    ;; message-mode derived modes, such as mu4e-compose-mode
    (defun gnus-dired-mail-buffers ()
      "Return a list of active message buffers."
      (let (buffers)
        (save-current-buffer
          (dolist (buffer (buffer-list t))
            (set-buffer buffer)
            (when (and (derived-mode-p 'message-mode)
                       (null message-sent-message-via))
              (push (buffer-name buffer) buffers))))
        (nreverse buffers)))

    (setq gnus-dired-mail-mode 'mu4e-user-agent)
    (add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

    ;; Copied this function from the mu4e manual. Allows you to send mail from different accounts
    (defun my-mu4e-set-account ()
      "Set the account for composing a message."
      (let* ((account
              (if mu4e-compose-parent-message
                  (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                    (string-match "/\\(.*?\\)/" maildir)
                    (match-string 1 maildir))
                (completing-read (format "Compose with account: (%s) "
                                         (mapconcat #'(lambda (var) (car var)) my-mu4e-account-alist "/"))
                                 (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                                 nil t nil nil (caar my-mu4e-account-alist))))
             (account-vars (cdr (assoc account my-mu4e-account-alist))))
        (if account-vars
            (mapc #'(lambda (var)
                      (set (car var) (cadr var)))
                  account-vars)
          (error "No email account found"))))

    ;; (add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)
    ;; (add-hook 'mu4e-compose-pre-hook 'helm-mu-contacts)


    ;; returns all the accounts configured in 'my-mu4e-account-alist'
    (defun my-mu4e-find-accounts ()
      "Returns the configured mu4e accounts by using the configuration list 'my-mu4e-account-alist'"
      (let (value)
        (dolist (account my-mu4e-account-alist)
          (add-to-list 'value (car account)))
        (print value)))

    ;; This is a helper function that is useful when using multiple accounts.
    ;; It does folder lookups from the my-mu4e-account-alist variable.
    ;; my-account - the email account to use for the lookup
    ;; my-folder  - the folder name to look up
    ;; It returns the value for a mail folder given the account and folder to be looked up.
    ;;
    ;; For example:
    ;; If I want to lookup the location for the Inbox of my@account.com I can do:
    ;; (my-mu4e-find-folder "my@account.com" "mu4e-inbox-folder")
    (defun my-mu4e-find-folder(my-account my-folder)
      "Returns the appropriate folder value when given an account and folder type. It returns the value from the configuration list 'my-mu4e-account-alist'"
      (let (value)
        (dolist (account my-mu4e-account-alist)
          (if (string-equal (car account) my-account)
              (dolist (var (cdr account))
                (if (string-equal (car var) my-folder)
                    (setq value (cdr var))))))
        (message (car value))))

    (defun my-mu4e-get-maildir-for-multiple-accounts(maildir seperator)
      (let ( (value)
             (identity ""))
        (dolist (account (my-mu4e-find-accounts))
          (add-to-list 'value (concat "maildir:" (my-mu4e-find-folder account maildir))))
        (dotimes (number (- (length value) 1) identity)
          (setq identity (concat identity (nth number value) " " seperator " ")))
        (setq identity (concat identity (nth (- (length value) 1) value)))))

    ;; let* binds the var directly after computing its local value.
    (let*((draft "flag:draft")
          (unread "flag:unread")
          (trash "flag:trashed")
          (trash-and-not-spam (concat trash " AND NOT "
                                      (my-mu4e-get-maildir-for-multiple-accounts "my-mu4e-spam-folder" "AND NOT"))))
      (setq mu4e-bookmarks
            `(
              (,(my-mu4e-get-maildir-for-multiple-accounts "mu4e-inbox-folder" "OR") "Messages in Inbox"      ?i)
              (,(concat unread " AND NOT " trash-and-not-spam) "Unread messages"      ?u)
              (,(concat "date:today..now AND NOT " trash-and-not-spam) "Today's messages"     ?t)
              (,(concat "date:7d..now AND NOT " trash-and-not-spam) "Last 7 days"          ?w)
              (,(concat "mime:image/* AND NOT " trash-and-not-spam) "Messages with images" ?p)
              (,(my-mu4e-get-maildir-for-multiple-accounts "mu4e-sent-folder" "OR") "Sent Mail" ?s)
              (,(my-mu4e-get-maildir-for-multiple-accounts "my-mu4e-spam-folder" "OR") "Spam" ?S)
              (,(concat trash) "Trashed messages" ?T)
              (,(concat draft) "Draft messages" ?d))))

    ;; Parse the year field from the message date.
    (defun my-mu4e-get-message-year(msg)
      (let ((year (decode-time (mu4e-message-field msg :date))))
        (message (number-to-string (nth 5 year)))))

    ;; returns the email account the current message is associated with.
    ;; It assumes that the account name is part of the path.
    ;; For example in my setup my offlineImap delivers my mail to ~/Maildir/my@account.com
    (defun my-mu4e-get-message-account(msg)
      (let (value)
        (dolist (account (my-mu4e-find-accounts))
          (if (search account (mu4e-message-field msg :path)) (add-to-list 'value account)))
        (message (car value))))


    (defun mu4e-train-ham (msg)
      "Train as spam and then mark for deletion."
      (let* ((cmd (format "sb_filter.py -g < %s >/dev/null"
                          (shell-quote-argument (mu4e-msg-field msg :path)))))
        (shell-command cmd))
      mu4e-headers-mark-for-spam(msg)
      (message "Trained as HAM"))))
