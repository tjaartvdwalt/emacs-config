(req-package ac-html
  :require (autocomplete web-mode)
  :init(progn (
                 (add-hook 'web-mode-hook 'ac-html-enable)
                 (add-to-list 'web-mode-ac-sources-alist
                              '("html" . (ac-source-html-attribute-value
                                          ac-source-html-tag
                                          ac-source-html-attribute))))))
