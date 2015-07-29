(req-package ac-emmet
  :require (auto-complete emmet-mode)

  :config (progn
            (add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
            (add-hook 'css-mode-hook 'ac-emmet-css-setup)))
(teaeouaeu)
