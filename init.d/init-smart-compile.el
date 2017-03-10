 ;; (use-package smart-compile
;;   :config (progn
;;           ;; Set a shortcut for compile
;;           (global-set-key "\C-xc" 'smart-compile)
;;           (setq smart-compile-alist '(
;;                                     (emacs-lisp-mode    . (emacs-lisp-byte-compile))
;;                                     (html-mode          . (browse-url-of-buffer))
;;                                     (nxhtml-mode        . (browse-url-of-buffer))
;;                                     (html-helper-mode   . (browse-url-of-buffer))
;;                                     (octave-mode        . (run-octave))
;;                                     (js-mode            . "jest")
;;                                     ("\\.c\\'"          . "gcc -O2 %f -lm -o %n")
;;                                     ("\\.[Cc]+[Pp]*\\'" . "g++ -O2 %f -lm -o %n")
;;                                     ("\\.go\\'"         . "go build")
;;                                     ("\\.m\\'"          . "gcc -O2 %f -lobjc -lpthread -o %n")
;;                                     ("\\.java\\'"       . "javac %f")
;;                                     ("\\.php\\'"        . "php -l %f")
;;                                     ("\\.pl\\'"         . "perl -cw %f")
;;                                     ("\\.rb\\'"         . "ruby -cw %f")
;;                                     )
;;           )))
