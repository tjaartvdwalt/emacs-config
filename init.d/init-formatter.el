(add-to-list 'load-path "~/.emacs.d/functions/formatter/")

(require 'formatter)

(add-hook 'js-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'formatter-format-buffer nil 'buffer-local)))
