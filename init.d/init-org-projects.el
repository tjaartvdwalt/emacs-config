(setq org-publish-project-alist
      '(("i3myway"
         :base-directory "~/my-classes/i3myway/docs"
         :publishing-directory "~/public_html/tjaartvdwalt.github.io/i3myway"
         ;; :section-numbers nil
         ;; :with-toc nil
         ;;:makeindex nil
         ;;:with-author nil
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
         :publishing-directory "~/public_html/ibook"
         :html-head "test"
         :html-postamble "")

        ("ibook-css"
         :base-directory "~/my-classes/ibook/org"
         :base-extension "css"
         :publishing-directory "~/public_html/ibook"
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
