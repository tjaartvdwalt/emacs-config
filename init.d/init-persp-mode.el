(req-package persp-mode
  :config(
          progn
           (unless (fboundp 'with-eval-after-load)
             (defmacro with-eval-after-load (file &rest body)
               (declare (indent 1) (debug t))
               `(eval-after-load ,file '(progn ,@body))))
           (with-eval-after-load "persp-mode-autoloads"
             (setq wg-morph-on nil) ;; switch off animation
             (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))))
