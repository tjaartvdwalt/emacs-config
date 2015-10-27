(req-package js-doc
  :config(
(setq js-doc-mail-address "tjaart@tjaart.co.za"
      js-doc-author (format "Tjaart van der Walt <%s>" js-doc-mail-address)
      js-doc-url "http://www.tjaart.co.za"
      js-doc-license "MIT")

(add-hook 'js-mode-hook
          #'(lambda ()
              (define-key js-mode-map "\C-cdi" 'js-doc-insert-function-doc)
              (define-key js-mode-map "@" 'js-doc-insert-tag)))))
