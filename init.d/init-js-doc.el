(req-package js-doc
  :init (progn
            (setq js-doc-mail-address "tjaart@tjaart.co.za"
                  js-doc-author (format "Tjaart van der Walt <%s>" js-doc-mail-address)
                  js-doc-url "http://www.tjaart.co.za"
                  js-doc-license "MIT")

            (define-key js-mode-map (kbd "C-cdi") 'js-doc-insert-function-doc)
            (define-key js-mode-map (kbd "@") 'js-doc-insert-tag)))

;; (define-key js-mode-map (kbd "M-.") nil)3
