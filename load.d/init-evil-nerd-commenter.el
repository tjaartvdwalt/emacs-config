(use-package evil-nerd-commenter
  :bind ("M-;" . hydra-commenter/body)
  )

(defhydra hydra-commenter (:color teal
                            :hint nil)
  "
     COMMENTER: %(projectile-project-root)

     Find File            Search/Tags          Buffers                Cache
------------------------------------------------------------------------------------------
_s-f_: file            _a_: ag                _i_: Ibuffer           _c_: cache clear
 _ff_: file dwim       _g_: update gtags      _b_: switch to buffer  _x_: remove known project
 _fd_: file curr dir   _o_: multi-occur     _s-k_: Kill all buffers  _X_: cleanup non-existing
  _r_: recent file                                               ^^^^_z_: cache current
  _d_: dir

"
  ("ci" evilnc-comment-or-uncomment-lines)
  ("cl" evilnc-quick-comment-or-uncomment-to-the-line)
  ("ll" evilnc-quick-comment-or-uncomment-to-the-line)
  ("cc" evilnc-copy-and-comment-lines)
  ("cp" evilnc-comment-or-uncomment-paragraphs)
  ("cr" comment-or-uncomment-region)
  ("cv" evilnc-toggle-invert-comment-line-by-line)
  ("."  evilnc-copy-and-comment-operator)
  ("\\" evilnc-comment-operator)

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
  ("s"   projectile-switch-project)
  ("r"   projectile-recentf)
  ("x"   projectile-remove-known-project)
  ("X"   projectile-cleanup-known-projects)
  ("z"   projectile-cache-current-file)
  ("`"   hydra-projectile-other-window/body "other window")
  ("q"   nil "cancel" :color blue))
