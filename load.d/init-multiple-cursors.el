(use-package multiple-cursors
  :config
  (defhydra hydra-multiple-cursors (:color red)
    "
  _a_ edit beginnings of lines
  _e_ edit ends of lines
  "
    ("a" mc/edit-beginnings-of-lines)
    ("e" mc/edit-ends-of-lines)))
