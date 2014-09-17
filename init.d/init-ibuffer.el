(req-package ibuffer
  :require (ibuffer-vc ibuffer-git ibuffer-tramp)
  :config (progn

            ;; To actually make these columns show up, you need to customize
            ;; `ibuffer-formats'. The symbol `git-status-mini' can be inserted
            ;; where you want it, and `git-status' should be inserted with
            ;; something as something like `(git-status 8 8 :left)', where 8 is
            ;; the number you picked for `ibuffer-git-column-length'.

            ;; (setq ibuffer-formats '((mark modified read-only " " (name 18 18 :left :elide)
	    ;;     		   " " (size 9 -1 :right)
	    ;;     		   " " (mode 16 16 :left :elide) " " filename-and-process)
	    ;;     	     (mark " " (name 16 -1) " " filename)))

            (add-hook 'ibuffer-hook
                      (lambda ()
                        (setq ibuffer-vc-set-filter-groups-by-vc-root t)
                        (setq ibuffer-tramp-set-filter-groups-by-tramp-connection t)
                        ;; (unless (eq ibuffer-sorting-mode 'alphabetic)
                        ;;   (ibuffer-do-sort-by-alphabetic))
                        ))
))

