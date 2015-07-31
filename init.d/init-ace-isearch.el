(req-package ace-isearch
  :require helm-swoop
  :config(progn (global-ace-isearch-mode +1)
              (setq ace-isearch-jump-delay 1.5)
              ;; I don't like ace-isearch to use helm-swoop... easiest
              ;; way for me to avoid this is to set the threshold to a
              ;; ridiculously large number
              (setq ace-isearch-input-length 6)))
