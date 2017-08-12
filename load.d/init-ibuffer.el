(use-package ibuffer
  :config

  (add-hook 'ibuffer-hook
            (lambda ()
              (setq ibuffer-vc-set-filter-groups-by-vc-root t)
              (setq ibuffer-tramp-set-filter-groups-by-tramp-connection t))))
