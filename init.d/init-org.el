;;; package --- summary
;;; Commentary:
;;; Code:
(req-package org
  :require (org-contacts org-location-google-maps org-latex)
  :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture))
  :init
  (progn
    (add-to-list 'org-export-backends 'man)
    ;; use minted for latex exported code blocks
    ;; NB: minted requires pygments to be installed
    (setq org-export-latex-listings 'minted)
    (add-to-list 'org-export-latex-packages-alist '("" "minted"))
    (setq org-latex-to-pdf-process (list "latexmk -latexoption=-shell-escape -pdf -bibtex %f"))
    ;; Render code blocks with their native major mode
    (setq org-export-html-style-include-default nil)
    (setq org-src-fontify-natively t)
    (setq org-clock-idle-time 5)
    (setq org-startup-truncated nil)
    (setq org-log-done t)
    (setq org-agenda-files (list "~/org/"))
    (setq org-mobile-push "~/Dropbox/org")
    (setq org-mobile-directory "~/Dropbox/org")
    (setq org-checkbox-hierarchical-statistics t)
    (setq org-html-doctype-alist (list "html5"))
    (setq org-default-notes-file (concat org-directory "~/org/notes.org"))
    (setq org-capture-templates
          '(("h" "Headline" entry (file "~/org/todo.org")
             "* %? [/]\n")
            ("t" "Todo Item" entry (file "~/org/todo.org")
             "* TODO %? [/]\n")
            ("o" "pOmodoro headline"  entry (file "~/org/todo.org")
             "* Pomodori %t [/] :pomodoro:\n- [-] pomodoro")
            ("p" "Pomodoro entry"  checkitem (file "~/org/todo.org")
             "[-] pomodoro")
            ("j" "Journal" entry (file+datetree "~/org/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")))
    (setq org-outline-path-complete-in-steps t)
    (setq org-refile-use-outline-path t)
    (setq org-refile-allow-creating-parent-nodes t)
    (setq org-refile-targets '((org-agenda-files :maxlevel . 5)))
    ;;(setq org-refile-targets '((("~/org/pomodoro.org" "~/org/todo.org") :maxlevel . 5)))

    (add-hook 'org-mode-hook 'org-mode-reftex-setup)))
(provide 'init-org)
;;; init-org ends here
