;; custom snippets go in ~/.emac.d/snippets

(req-package yasnippet
  :require (auto-yasnippet ido)
  :init
  (progn
    (setq yas-prompt-functions '(yas-ido-prompt))
    (yas-global-mode t)
    ))

;;(setq yas-snippet-dirs
;;      '("~/.emacs.d/snippets"                 ;; personal snippets
;;        ;;"/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
;;        ;;"/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
;;        ;;"/path/to/yasnippet/snippets"         ;; the default collection
;;        ))


;; (elpa-install 'auto-yasnippet)
;; (require ')

;; (elpa-install ')
;; (require 'go-snippets)
;; (elpa-install 'java-snippets)
;; (elpa-install 'php-auto-yasnippets)
;; (require 'php-auto-yasnippets)


