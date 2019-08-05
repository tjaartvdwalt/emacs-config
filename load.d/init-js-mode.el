(progn
  (setq js-indent-level 4)

  (add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
  (add-to-list 'auto-mode-alist '("\\.mjs\\'" . js-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-mode))

   ;; (add-hook 'js-mode-hook
   ;;   (lambda ()
   ;;    (define-key js-mode-map (kbd "C-c i") 'prettier-js)))

  (add-hook 'js-mode-hook
    (lambda ()
      (subword-mode 1))))

;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`
(use-package tern
  :delight tern-mode
  :config
  (add-hook 'js-mode-hook (lambda () (tern-mode t))))

;; (use-package tern-auto-complete
;;   :config
;;   (tern-ac-setup)
;;   (setq tern-ac-sync t)
;;   (add-hook 'js-mode-hook
;;     (lambda ()
;;       (add-to-list 'ac-sources 'ac-source-tern-completion))))

(use-package json-mode
  :config
  (flycheck-add-mode 'json-jsonlint 'json-mode)
  (add-hook 'json-mode-hook
    (lambda ()
      (if (derived-mode-p 'json-mode)
        (add-hook 'after-save-hook 'indent-whole-buffer t t)))))

;; (use-package eslintd-fix
;;   :bind (:map js-mode-map
;;           ("C-c i" .   eslintd-fix))
;;   :config
;;   (setq eslintd-fix-executable "eslint_d"))
