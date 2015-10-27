(req-package js-doc
  :config(
(setq js-doc-mail-address "tjaart@tjaart.co.za"
      js-doc-author (format "your name <%s>" js-doc-mail-address)
      js-doc-url "url of your website"
      js-doc-license "license name")
;;
;; (add-hook 'js-mode-hook
;;           #'(lambda ()
;;               (define-key js-mode-map "\C-ci" 'js-doc-insert-function-doc)
;;               (define-key js2-mode-map "@" 'js-doc-insert-tag)))
;;
;; If you want to see the tag description, just input the next command
;;   M-x js-doc-describe-tag

;;; Code:
          ))
