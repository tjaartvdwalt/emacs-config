(add-to-list 'load-path "~/.emacs.d/functions/formatter/")

(require 'formatter)

(add-hook 'js-mode-hook
          (lambda ()
            (unless (derived-mode-p 'json-mode)
              (local-set-key (kbd "C-c x") 'standardfmt))))


;; (add-hook 'js-mode-hook
;;           (lambda ()
;;             (unless (derived-mode-p 'json-mode)
;;               (add-hook 'before-save-hook 'standardfmt t t))))

