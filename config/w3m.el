;; open page in firefox
(defun w3m-open-current-page-in-firefox ()
  "Open the current URL in Mozilla Firefox."
  (interactive)
  (browse-url-firefox w3m-current-url))

(defun w3m-open-link-or-image-in-firefox ()
  "Open the current link or image in Firefox."
  (interactive)
  (browse-url-firefox (or (w3m-anchor)
                          (w3m-image))))

(elpa-install 'w3m)
(require 'w3m)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-use-cookies t)
(setq w3m-cookie-accept-bad-cookies t)
(setq w3m-default-display-inline-images t)

(setq w3m-use-tab t)

(define-key w3m-mode-map "f" 'w3m-open-current-page-in-firefox)
(define-key w3m-mode-map "F" 'w3m-open-link-or-image-in-firefox)

;; webjump
(elpa-install 'webjump)
(require 'webjump)

(setq webjump-sites
   (append '(
            ("Arch: AUR Search" .
            [simple-query "https://aur.archlinux.org"
                          "https://aur.archlinux.org/packages/?O=0&K=" "" ])
            ("Arch: Home" . "https://www.archlinux.org/")
            ("Arch: Package Search" .
            [simple-query "https://www.archlinux.org"
                          "https://www.archlinux.org/packages/?q=" "" ])
            ("Arch: Wiki Search" .
            [simple-query "https://wiki.archlinux.org"
                          "https://wiki.archlinux.org/index.php?title=Special%3ASearch&search=" "" ])
            
            ("C: A C tutorial" . "http://www.physics.drexel.edu/students/courses/Comp_Phys/General/C_basics/")
            ("C++: A C++ tutorial" . "http://www.learncpp.com/")
            
            ("Chef: Documents" . "http://docs.opscode.com/")
            ("Chef: Opscode Community" . "http://community.opscode.com/")

            ("Emacs: Lisp Tutorial by Example" . "http://ergoemacs.org/emacs/elisp_basics.html")
            ("Emacs: Elisp Cookbook" . "http://www.emacswiki.org/emacs/ElispCookbook")
            ("Emacs: An Introduction to Programming in Elisp" . "https://www.gnu.org/software/emacs/manual/html_node/eintr/index.html")
            ("Emacs: Elisp Reference Manual" . "http://www.gnu.org/software/emacs/manual/html_node/elisp/index.html")

            ("Emacs Mode: Rinari" . "http://rinari.rubyforge.org/index.html")
            ("Emacs Mode: Magit" . "http://magit.github.io/master/magit.html")
            ("Emacs Mode: mu4e" . "http://www.djcbsoftware.nl/code/mu/mu4e/index.html")
            ("Emacs Mode: RSense" . "http://cx4a.org/software/rsense/manual.html")
            
            ("GNU: Coding Standards" . "http://www.gnu.org/prep/standards/html_node/index.html")
            ("GNU: Awk User's Guide" . "http://www.gnu.org/software/gawk/manual/html_node/index.html")

            ("Github: Search" .
             [simple-query "https://github.com"
                           "https://github.com/search?q=" "&type=Everything&repo=&langOverride=&start_value=1"])

            ("i3: User's guide" . "http://i3wm.org/docs/userguide.html")

            ("Linux: Find command tutorial" . "http://content.hccfl.edu/pollock/unix/findcmd.htm")
            ("Linux: iw" . "http://wireless.kernel.org/en/users/Documentation/iw")
            ("Linux: Writing udev rules" . "http://www.reactivated.net/writing_udev_rules.html")

            ("Markdown: Basics" . "http://daringfireball.net/projects/markdown/basics")
            ("Markdown: Cheatsheet" . "https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet")

            ("Stack Overflow" .
             [simple-query "http://stackoverflow.com"
                          "http://stackoverflow.com/search?q=" "" ])
            )))

