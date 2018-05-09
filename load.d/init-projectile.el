(use-package projectile
  :diminish projectile-mode
  :config
  (progn
    (projectile-global-mode +1)
    ;; (setq projectile-indexing-method 'native)
    (setq projectile-enable-caching t)
    (setq projectile-completion-system 'ivy)
    (add-to-list 'projectile-other-file-alist '("js" "hbs"))
    (add-to-list 'projectile-other-file-alist '("hbs" "js"))
    ;; (setq projectile-switch-project-action 'projectile-dired)
    ))

(define-key global-map (kbd "C-c .") 'hydra-projectile/body)

(defhydra hydra-projectile (:color teal
			    :columns 4)
  "Projectile"
  ("f"   projectile-find-file                "Find File")
  ("r"   projectile-recentf                  "Recent Files")
  ("z"   projectile-cache-current-file       "Cache Current File")
  ("x"   projectile-remove-known-project     "Remove Known Project")

  ("d"   projectile-find-dir                 "Find Directory")
  ("b"   projectile-switch-to-buffer         "Switch to Buffer")
  ("c"   projectile-invalidate-cache         "Clear Cache")
  ("X"   projectile-cleanup-known-projects   "Cleanup Known Projects")

  ("o"   projectile-multi-occur              "Multi Occur")
  ("s"   projectile-switch-project           "Switch Project")
  ("k"   projectile-kill-buffers             "Kill Buffers")
  ("q"   nil "Cancel" :color blue))
