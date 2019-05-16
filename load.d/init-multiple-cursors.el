(use-package multiple-cursors
  :config
  (defhydra hydra-multiple-cursors (:color red)
    "
  _o_pen node    _n_ext fold       toggle _f_orward
  _c_lose node   _p_revious fold   toggle _a_ll
  "
    ("a" mc/edit-beginnings-of-lines)
    ("e" mc/edit-ends-of-lines)))
