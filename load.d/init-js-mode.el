(progn
  (setq js-indent-level 2)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js-jsx-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-jsx-mode))
  (add-hook 'js-mode-hook
            (lambda ()
              (subword-mode 1))))

(use-package kite)

;; tern must be installed seperately
;; on arch linux `yaourt -S nodejs-tern`
(use-package tern
  :diminish tern-mode
  :config
  (add-hook 'js-mode-hook (lambda () (tern-mode t))))

(use-package tern-auto-complete
  :config
  (tern-ac-setup)
  (setq tern-ac-sync t)
  (add-hook 'js-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-tern-completion))))

(use-package json-mode
  :config
  (flycheck-add-mode 'json-jsonlint 'json-mode)
  (add-hook 'json-mode-hook
            (lambda ()
              (if (derived-mode-p 'json-mode)
                  (add-hook 'after-save-hook 'indent-whole-buffer t t)))))

(use-package eslint-fix
  :config
  (add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))
