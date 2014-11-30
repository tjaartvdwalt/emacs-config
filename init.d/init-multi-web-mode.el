;;; package --- summary
;;; Commentary:
;;; Code:

(req-package multi-web-mode
  :config
  (progn
    (setq mweb-default-major-mode 'html-mode)
    (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                      (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                      (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")
                      (rhtml-mode "<%" "%>")))
    (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "erb"))
    (multi-web-global-mode 1)
    ))

(provide 'init-multi-web-mode)
;;; init-multi-web-mode ends here
