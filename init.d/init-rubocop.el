(use-package rubocop
  :config (progn
            (add-hook 'enh-ruby-mode-hook (lambda () (add-hook 'after-save-hook 'rubocop-autocorrect-current-file t t)))))

(defun rubocop-save-buffer ()
  (rubocop-autocorrect-current-file))
