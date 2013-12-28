(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;;Set a shortcut for mu4e
(global-set-key "\C-xr" 'mu4e)

(defun mu4e-headers-mark-for-spam (msg)
       "Move the current message to the Spam folder."
       (interactive "p")
       (mu4e-mark-set 'move "/tjaart@tjaart.co.za/[Gmail].Spam"))

;; define 'N' (the first letter of the description) as the shortcut
;; the 't' argument to add-to-list puts it at the end of the list
(add-to-list 'mu4e-headers-actions
        '("sMark as Spam" . mu4e-headers-mark-for-spam) t)

;; use w3m to render html mail
(setq mu4e-html2text-command "w3m -dump -T text/html")

;; update every 5 minutes
(setq mu4e-update-interval 180)

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

(setq ;;mu4e-refile-folder "/tajvdw@gmail.com/Archives"
      mu4e-sent-folder "/tjaart@tjaart.co.za/Sent"
      mu4e-drafts-folder "/tjaart@tjaart.co.za/[Gmail].Drafts"
      mu4e-trash-folder "/tjaart@tjaart.co.za/[Gmail].Trash"
      user-mail-address "tjaart@tjaart.co.za"
      user-full-name  "Tjaart van der Walt"
)

(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
        smtpmail-stream-type 'starttls
        smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
        smtpmail-default-smtp-server "smtp.gmail.com"
        smtpmail-smtp-server "smtp.gmail.com"
        smtpmail-smtp-service 587
)

(require 'gnus-dired)
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

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(defvar my-mu4e-account-alist
  '(("tjaart@tjaart.co.za"
    (mu4e-inbox-folder "/tjaart@tjaart.co.za/INBOX")
    (mu4e-refile-folder "/tajvdw@gmail.com/Archives")
    (mu4e-drafts-folder "/tjaart@tjaart.co.za/[Gmail].Drafts")
    (mu4e-sent-folder "/tjaart@tjaart.co.za/[Gmail].Sent\\ Mail")
    (mu4e-spam-folder "/tjaart@tjaart.co.za/[Gmail].Spam")
    (mu4e-trash-folder "/tjaart@tjaart.co.za/[Gmail].Trash")
    (user-mail-address "tjaart@tjaart.co.za")
    ;; don't save messages to Sent Messages, Gmail/IMAP takes care of this
    (setq mu4e-sent-messages-behavior 'delete)
   )
   ("tajvdw@gmail.com"
    (mu4e-inbox-folder "/tajvdw@gmail.com/INBOX")
    (mu4e-refile-folder "/tajvdw@gmail.com/Archives")
    (mu4e-drafts-folder "/tajvdw@gmail.com/[Gmail].Drafts")
    (mu4e-sent-folder "/tajvdw@gmail.com/[Gmail].Sent\\ Mail")
    (mu4e-spam-folder "/tajvdw@gmail.com/[Gmail].Spam")
    (mu4e-trash-folder "/tajvdw@gmail.com/[Gmail].Trash")
    (user-mail-address "tajvdw@gmail.com")
    (setq mu4e-sent-messages-behavior 'delete)

   )
   ("tav9wc@mail.umsl.edu"
    (mu4e-inbox-folder "/tav9wc@mail.umsl.edu/INBOX")
    (mu4e-refile-folder "/tav9wc@mail.umsl.edu/Archives")
    (mu4e-drafts-folder "/tav9wc@mail.umsl.edu/Drafts")
    (mu4e-sent-folder "/tav9wc@mail.umsl.edu/Sent")
    (mu4e-spam-folder "/tav9wc@mail.umsl.edu/Spam")
    (mu4e-trash-folder "/tav9wc@mail.umsl.edu/Trash")
    (user-mail-address "tav9wc@mail.umsl.edu")
    (smtpmail-smtp-server "smtp.outlook.com")
    (smtpmail-stream-type starttls)
    (smtpmail-smtp-service 587))

   
   ))

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

     (add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)


(defun my-mu4e-find-accounts ()
  "Returns the configured mu4e accounts by using the configuration list 'my-mu4e-account-alist'"
  (let (value)
    (dolist (account my-mu4e-account-alist)
      (add-to-list 'value (car account)))
  (print value)))


;; a function to find the location for a mu4e-folder.
;; Can be used to generalize functions when using multiple accounts 
(defun my-mu4e-find-folder(my-account my-folder)
  "Returns the appropriate folder value when given an account and folder type. It returns the value from the configuration list 'my-mu4e-account-alist'"
  (let (value)
    (dolist (account my-mu4e-account-alist)
      (if (string-equal (car account) my-account)
        (dolist (var (cdr account))
          (if (string-equal (car var) my-folder)
            (setq value (cdr var))))))
    (message (car value))))

;; let* binds the var directly after computing its local value. 
(let*((draft "flag:draft")
      (unread "flag:unread")
      (trash "flag:trashed")
      (tajinbox    (concat "maildir:" (my-mu4e-find-folder "tajvdw@gmail.com"     "mu4e-inbox-folder")))
      (tjaartinbox (concat "maildir:" (my-mu4e-find-folder "tjaart@tjaart.co.za"  "mu4e-inbox-folder")))
      (tav9wcinbox (concat "maildir:" (my-mu4e-find-folder "tav9wc@mail.umsl.edu" "mu4e-inbox-folder")))
      (tajspam    (concat "maildir:" (my-mu4e-find-folder "tajvdw@gmail.com"     "mu4e-spam-folder")))
      (tjaartspam (concat "maildir:" (my-mu4e-find-folder "tjaart@tjaart.co.za"  "mu4e-spam-folder")))
      (tajsent    (concat "maildir:" (my-mu4e-find-folder "tajvdw@gmail.com"     "mu4e-sent-folder")))
      (tjaartsent (concat "maildir:" (my-mu4e-find-folder "tjaart@tjaart.co.za"  "mu4e-sent-folder")))
      (tav9wcsent (concat "maildir:" (my-mu4e-find-folder "tav9wc@mail.umsl.edu" "mu4e-sent-folder")))
      (trash-and-not-spam (concat trash " AND NOT " tajspam " AND NOT " tjaartspam)))
(setq mu4e-bookmarks
        `(
          (,(concat tajinbox " OR " tjaartinbox " OR " tav9wcinbox) "Messages in Inbox"      ?i)
          (,(concat unread " AND NOT " trash-and-not-spam) "Unread messages"      ?u)
          (,(concat "date:today..now AND NOT " trash-and-not-spam) "Today's messages"     ?t)
          (,(concat "date:7d..now AND NOT " trash-and-not-spam) "Last 7 days"          ?w)
          (,(concat "mime:image/* AND NOT " trash-and-not-spam) "Messages with images" ?p)
          (,(concat tjaartsent " OR " tajsent " OR " tav9wcsent) "Sent Mail" ?s)
          (,(concat tjaartspam " OR " tajspam) "Spam" ?S)
          (,(concat trash) "Trashed messages" ?T)
          (,(concat draft) "Draft messages" ?d))))

(defun my-mu4e-get-message-year(msg)
(let ((year (decode-time (mu4e-message-field msg :date))))
    (message (number-to-string (nth 5 year)))))

(defun my-mu4e-get-message-account(msg)
  (let (value)
  (dolist (account (my-mu4e-find-accounts))
    (if (search account (mu4e-message-field msg :path)) (add-to-list 'value account)))
  (message (car value))))


;; archive messages to the folder corresponding to the current year
(setq mu4e-refile-folder
  (lambda (msg)
     ;;(message (my-mu4e-find-folder (my-mu4e-get-message-account msg) "mu4e-refile-folder"))
     (message (concat (my-mu4e-find-folder (my-mu4e-get-message-account msg) "mu4e-refile-folder") "." (my-mu4e-get-message-year msg)))))
