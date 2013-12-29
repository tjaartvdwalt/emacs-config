# My Emacs config
This is my personal Emacs config.

I wrote this config to self install the required plugins before configuring them.
## Installation of plugins 
There are two ways to install a plugin: [ELPA](https://github.com/tjaartvdwalt/emacs-config/blob/master/config/elpa.el) or [el-get](https://github.com/tjaartvdwalt/emacs-config/blob/master/config/el-get.el)
Elpa is the preferred installation method but el-get can install packages from more sources.

### ELPA
The way to install a package is:
```
(elpa-install 'my-package)
```

### el-get



## Plugins
### mu4e
mu4e is not available through one of the plugin installation systems. It is bundled with [mu](http://www.djcbsoftware.nl/code/mu/). On Arch Linux mu can be installed through the AUR.

mu does not fetch email, it is primarily a mail indexer and works with mail in the maildir format. A really nice tool that handles the mail synchronisation is [offlineimap](http://offlineimap.org/). The config for offlineimap is beyond the scope of this document.

This [config](https://github.com/tjaartvdwalt/emacs-config/blob/master/config/mu4e.el) is a work in progress.
The general idea is that I want to configure multiple email accounts by setting the `my-mu4e-account-alist` variable. All the config should be done dynamically using these values.

#### Bookmarks
I like to view my spam separate from the rest of my mail. I changed the default bookmarks `Unread messages` `Today's messages` `Last 7 days` and `Messages with images` to exclude messages that are in the Spam or Trash folders.

I also added the following bookmarks:
`Messages in Inbox` to show a unified Inbox for all my accounts.
`Sent Mail` to show the Sent Mail folders
`Spam` to show the Spam folders
`Trashed messages` to show the Trash folders
`Draft messages` to show the Drafts folders

#### Smart refiling
Smart refiling is one of the features that make mu4e very cool. Basically you can Archive your emails by some email attribute. I Archive my emails based on the year it was sent.

The refiling algorithm checks the year the email under point was sent and marks it for refiling in the corresponding year subfolder in the Archive folder for that account.

For example if your email config looks like this:
```
(setq mu4e-maildir "~/Maildir/")

(defvar my-mu4e-account-alist
  '(("my@email.com"
    (mu4e-refile-folder "/my@email.com/Archives")
    ...
```
And you try to refile an email that was sent on "28 December 2013" your email will be filed in the following directory in your maildir.

```
~/Maildir/my@email.com/Archives.2013
```


#### Spam


### sudo tramp
