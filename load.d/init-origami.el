(use-package origami
  :bind (("M-<tab>" . origami-recursively-toggle-node))
  :config
            (global-origami-mode))
  ;;           (defhydra hydra-origami (:color red)
  ;;             "
  ;; _o_pen node    _n_ext fold       toggle _f_orward
  ;; _c_lose node   _p_revious fold   toggle _a_ll
  ;; "
  ;;             ("o" origami-open-node)
  ;;             ("c" origami-close-node)
  ;;             ("n" origami-next-fold)
  ;;             ("p" origami-previous-fold)
  ;;             ("f" origami-forward-toggle-node)
  ;;             ("a" origami-toggle-all-nodes)))
