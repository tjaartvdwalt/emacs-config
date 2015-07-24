(req-package ac-etags
  :requirea (etags)
  :config (progn
            (ac-etags-setup)
            (add-hook 'c-mode-common-hook 'ac-etags-ac-setup)))
