(use-package projectile
  :delight projectile-mode
  :config
  (progn
    (projectile-global-mode +1)
    ;; (setq projectile-indexing-method 'native)
    (setq projectile-enable-caching t)
    (setq projectile-completion-system 'ivy)
    (add-to-list 'projectile-other-file-alist '("js" "hbs"))
    (add-to-list 'projectile-other-file-alist '("hbs" "js"))
    ;; (setq projectile-switch-project-action 'projectile-dired)

    (projectile-register-project-type 'yarn '("package.json")
									  :compile "yarn build"
									  :test "yarn test"
									  :related-files-fn #'my/related-files
									  :run "yarn serve"
									  :src-dir "src"
									  :test-suffix ".test.js")
    (setq projectile-switch-project-action #'project-explorer-open)
	(setq projectile-keymap-prefix nil)))

(defun my/related-files (path)
  (if (string-match (rx (group (or "src" "test")) (group "/" (1+ anything) ".cpp")) path)
      (let ((dir (match-string 1 path))
            (file-name (match-string 2 path)))
        (if (equal dir "test")
            (list :impl (concat "src" file-name))
          (list :test (concat "test" file-name)
                :other (concat "src" file-name ".def"))))))


(defhydra hydra-projectile (:color teal
								   :hint nil)
  "
     PROJECTILE: %(projectile-project-root)

     Find File            Search/Tags          Buffers                Cache
------------------------------------------------------------------------------------------
_s-f_: file            _a_: ag                _i_: Ibuffer           _c_: cache clear
 _ff_: file dwim       _g_: update gtags      _b_: switch to buffer  _x_: remove known project
 _fd_: file curr dir   _o_: multi-occur     _s-k_: Kill all buffers  _X_: cleanup non-existing
  _r_: recent file                                               ^^^^_z_: cache current
  _d_: dir

"
  ("a"   projectile-ag)
  ("b"   projectile-switch-to-buffer)
  ("c"   projectile-invalidate-cache)
  ("d"   projectile-find-dir)
  ("s-f" projectile-find-file)
  ("ff"  projectile-find-file-dwim)
  ("fd"  projectile-find-file-in-directory)
  ("g"   ggtags-update-tags)
  ("s-g" ggtags-update-tags)
  ("i"   projectile-ibuffer)
  ("K"   projectile-kill-buffers)
  ("s-k" projectile-kill-buffers)
  ("m"   projectile-multi-occur)
  ("o"   projectile-multi-occur)
  ("s-p" projectile-switch-project "switch project")
  ("p"   projectile-switch-project)
  ("s"   projectile-persp-switch-project)
  ("r"   projectile-recentf)
  ("x"   projectile-remove-known-project)
  ("X"   projectile-cleanup-known-projects)
  ("z"   projectile-cache-current-file)
  ("`"   hydra-projectile-other-window/body "other window")
  ("q"   nil "cancel" :color blue))
