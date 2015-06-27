(req-package ac-html
  :requires (autocomplete)
  :config(progn (
                 (add-hook 'web-mode-hook 'ac-html-enable)
                 (add-to-list 'web-mode-ac-sources-alist
                              '("html" . (ac-source-html-attribute-value
                                          ac-source-html-tag
                                          ac-source-html-attribute)))
                 )))
