(req-package emmet-mode
  :config((progn
            (add-hook 'sgml-mode-hook 'emmet-mode) 
            (add-hook 'css-mode-hook  'emmet-mode))))

