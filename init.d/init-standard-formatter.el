(add-hook 'js-mode-hook
          (lambda ()
            (unless (derived-mode-p 'json-mode)
              ;; (local-unset-key (kbd "\C-c u i"))
              (add-hook 'after-save-hook 'standardfmt t t))))
              ;; (global-set-key (kbd "C-c u i") 'standardfmt))))


;; (add-hook 'js-mode-hook
;;           (lambda ()
;;             (unless (derived-mode-p 'json-mode)
;;               (add-hook 'before-save-hook 'standardfmt t t))))
