;;; package --- summary
;;; Commentary:
;;; Code:
(req-package org
  :require (ox-man org-contacts )
  :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture))
  :config
  (progn
    ;; ************* Export *************
    ;; use minted for latex exported code blocks
    ;; NB: minted requires pygments to be installed
    (setq org-src-fontify-natively t)
    (setq org-export-latex-minted t)
    (setq org-export-latex-listings 'minted)
    ;; (add-to-list 'org-export-latex-packages-alist '("" "minted"))
    (setq org-latex-to-pdf-process (list "latexmk -latexoption=-shell-escape -pdf -bibtex %f"))
    ;; Render code blocks with their native major mode
    (setq org-export-html-style-include-default nil)

    (add-to-list 'org-latex-classes
             '("moderncv"
               "\\documentclass{moderncv}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
    
    ;; ************* Misc *************
    (setq org-src-fontify-natively t)
    (setq org-clock-idle-time 5)
    (setq org-startup-truncated nil)
    (setq org-log-done t)
    (setq org-agenda-files (list "~/org/"))
    (setq org-checkbox-hierarchical-statistics t)
    (setq org-list-allow-alphabetical t)

    ;; this is neccesary with org 8.2.7c, otherwise the doctype gets printed at
    ;; the top of the html page... this is probably a bug
    (setq org-html-doctype "")

    ;; ************* Mobile org *************
    (setq org-mobile-push "~/Dropbox/org")
    (setq org-mobile-directory "~/Dropbox/org")
    (setq org-html-doctype-alist (list "html5"))
    (setq org-default-notes-file (concat org-directory "~/org/notes.org"))

    ;; ************* Templates *************
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

    (add-hook 'org-mode-hook 'org-mode-reftex-setup))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((latex . t))))

(provide 'init-org)
;;; init-org ends here
