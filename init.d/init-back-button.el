;; (use-package back-button
;;   :diminish back-button-mode
;;   :require smartrep
;;   ;; :bind (("C-c bh" . back-button-local-backward)
;;   ;;        ("C-c bn" . back-button-local-forward))
;;   :config (progn (back-button-mode 1)
;;                  (smartrep-define-key
;;                      global-map "C-c b"
;;                    '(("h" . 'back-button-local-backward)
;;                      ("n" . 'back-button-local-forward)
;;                      ("C-h" . 'back-button-global-backward)
;;                      ("C-n" . 'back-button-global-forward)))))
