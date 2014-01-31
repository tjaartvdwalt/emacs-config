(require 'newsticker)

;;use w3m to render the html
(setq newsticker-html-renderer 'w3m-region)

; We want our feeds pulled every 10 minutes.
(setq newsticker-retrieval-interval 600)
(setq newsticker-retrieval-method 'extern)
(setq newsticker-wget-arguments '("-q" "-O" "-" "--user-agent" "testing"))

(setq newsticker-url-list '(("fsdaily.com - Free Software News - Submitted news"
                             "http://www.fsdaily.com/feed/all/All" nil nil nil)
                            ("Home Page Extended"
                             "http://www.iol.co.za/cmlink/home-page-extended-1.628986" nil nil nil)
                            ("Keo.co.za"
                             "http://www.keo.co.za/feed/" nil nil nil)
                            ("News24 Top Stories"
                             "http://feeds.news24.com/articles/News24/TopStories/rss" nil nil nil)
                            ("Sport Extended"
                             "http://www.iol.co.za/cmlink/sport-extended-1.628987" nil nil nil)
                            ("xkcd.com"
                             "http://xkcd.com/atom.xml" nil nil nil)
                            ("CNN"
                             "http://rss.cnn.com/rss/cnn_topstories.rss" nil nil nil)
                            ("The Register"
                             "http://www.theregister.co.uk/headlines.atom" nil nil nil)
                            ("Super XV Headlines"
                             "http://www.superxv.com/RSS/news.xml" nil nil nil)
                            ("Open Source"
                             "http://opensource.com/feed" nil nil nil)))


; Don't forget to start it!
(newsticker-start)



