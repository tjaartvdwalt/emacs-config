(use-package ivy
  :ensure t
  :delight ivy-mode
  :bind ("C-x b" . ivy-switch-buffer)
  :config
  (ivy-mode 1)
  ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
  (setq ivy-use-virtual-buffers t)
  ;; number of result lines to display
  (setq ivy-height 15)
  ;; does not count candidates
  (setq ivy-count-format "")
  ;; no regexp by default
  (setq ivy-initial-inputs-alist nil)
  ;; configure regexp engine.
  (setq ivy-re-builders-alist

        '((read-file-name-internal . ivy--regex-fuzzy)
          (t . ivy--regex-plus)))

  (use-package ivy-dired-history)

  (use-package swiper
    :bind
    ("C-s" . swiper)))

(use-package counsel
  :pretty-hydra
  ((:color teal :quit-key "q")
   ("Ivy"
	(  ("a" counsel-ag  :exit true)
	   ("f" counsel-find-file  :exit true)
	   ("g" counsel-git :exit true)
	   ("j" counsel-git-grep :exit true)
	   ("l" counsel-locate :exit true)
	   ("r" counsel-recentf :exit true)))))
