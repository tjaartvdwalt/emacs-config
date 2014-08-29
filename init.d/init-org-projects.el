(setq org-publish-project-alist
      '(("i3myway"
         :base-directory "~/my-classes/i3myway/docs"
         :publishing-directory "~/public_html/tjaartvdwalt.github.io/i3myway"
         ;; :section-numbers nil
         ;; :with-toc nil
         ;;:makeindex nil
         ;;:with-author nil
         :
         :html-postamble "Last updated: %d"
         :html-head "<link rel=\"stylesheet\"
                         href=\"mystyle.css\"
                         type=\"text/css\"/>")))
