(add-to-list 'load-path "~/.emacs.d/functions/formatter/")

(require 'formatter)

(add-hook 'js-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'formatter nil 'buffer-local)))
