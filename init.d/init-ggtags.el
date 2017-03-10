(use-package ggtags
  ;; You need ctags pygments and gnu global installed on your os
  :config
  (progn

    (define-key ggtags-mode-map (kbd "M-%") 'ggtags-query-replace)
    (define-key ggtags-mode-map (kbd "M-,") 'ggtags-find-definition)


    ;; enable ggtags in the following modes
    (add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))
    ))
