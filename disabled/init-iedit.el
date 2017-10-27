(use-package iedit
  :config(progn
           (global-unset-key (kbd "C-;"))
           (global-set-key (kbd "C-,") 'iedit-mode)
           (define-key iedit-lib-keymap (kbd ",") 'iedit-toggle-unmatched-lines-visible)))
