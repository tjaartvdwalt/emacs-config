(setq org-format-latex-header "\\documentclass{article}\n\\usepackage[usenames]{color}\n[PACKAGES]\n[DEFAULT-PACKAGES]\n\\usepackage{tikz}\n\\pagestyle{empty}             % do not remove\n% The settings below are copied from fullpage.sty\n\\setlength{\\textwidth}{\\paperwidth}\n\\addtolength{\\textwidth}{-3cm}\n\\setlength{\\oddsidemargin}{1.5cm}\n\\addtolength{\\oddsidemargin}{-2.54cm}\n\\setlength{\\evensidemargin}{\\oddsidemargin}\n\\setlength{\\textheight}{\\paperheight}\n\\addtolength{\\textheight}{-\\headheight}\n\\addtolength{\\textheight}{-\\headsep}\n\\addtolength{\\textheight}{-\\footskip}\n\\addtolength{\\textheight}{-3cm}\n\\setlength{\\topmargin}{1.5cm}\n\\addtolength{\\topmargin}{-2.54cm}")
(setq org-publish-project-alist
      '(("github"
         :base-directory "~/my-classes/tjaartvdwalt.github.io/"
         :publishing-directory "~/public_html/tjaartvdwalt.github.io/"
         ;; :section-numbers nil
         ;; :with-toc nil
         ;;:makeindex nil
         ;;:with-author nil
         :publishing-function org-html-publish-to-html
         :html-postamble "Last updated: %d"
         :html-head "<link rel=\"stylesheet\"
                         href=\"mystyle.css\"
                 type=\"text/css\"/>")

        ("org-info"
         :base-directory "~/my-dev/org-info-js"
         :base-extension "js"
         :publishing-directory "~/public_html/tjaartvdwalt.github.io/js"
         :publishing-function org-publish-attachment)

        ("ibook"
         :base-directory "~/my-classes/ibook/org"
         :publishing-directory "~/public_html/ibook/www"
         :publishing-function org-html-publish-to-html
         :html-postamble "")

        ("ibook-resources"
         :base-directory "~/my-classes/ibook/org"
         :base-extension "js\\|css\\|png"
         :publishing-directory "~/public_html/ibook/www"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("ibook-images"
         :base-directory "~/my-classes/ibook/pictures"
         :base-extension "jpg\\|svg\\|gif\\|png"
         :publishing-directory "~/public_html/ibook/www/pictures"
         :recursive t
         :publishing-function org-publish-attachment
         )

        
        ("ibook-widgets"
         :base-directory "~/my-classes/ibook/apps/widgets"
         :base-extension "js\\|css\\|html"
         :publishing-directory "~/public_html/ibook/www/widgets"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("ibook-monocle"
         :base-directory "~/my-classes/ibook/monocle"
         :base-extension "js\\|css\\|html"
         :publishing-directory "~/public_html/ibook/www"
         :recursive t
         :publishing-function org-publish-attachment
         )
        

        ("blog" :base-directory "~/blog/"
         :base-extension "org"
         :publishing-directory "~/public_html/blog/"
         :publishing-function org-publish-org-to-html
         :auto-index t
         :blog-base-url "http://tjaartvdwalt.github.io/blog/"
         :blog-title "test"
         :blog-description "Tjaart's web log."
         :blog-export-rss t
         :index-function org-publish-blog-index
         :index-filename "index.org"
         :index-title "Title of my Blog"
         :index-posts 2
         :preamble my-blogroll-html
         ;;:postamble my-footer-html
         :html-head "<link rel=\"stylesheet\"
                         href=\"main.css\"
                 type=\"text/css\"/>"

         :html-postamble "Date: %d"
         )))
