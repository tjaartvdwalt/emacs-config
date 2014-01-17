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
(global-set-key "\C-cj" 'webjump)

(setq webjump-sites
   (append '(("stackoverflow" . "www.stackoverflow.com"))
      webjump-sample-sites))

