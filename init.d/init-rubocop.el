(use-package rubocop
  :config (progn
            (add-hook 'enh-ruby-mode-hook (lambda () (add-hook 'after-save-hook 'rubocop-save-buffer t t)))))

(defun rubocop-save-buffer ()
  (message "saved ruby file")
  (rubocop-autocorrect-current-file))
