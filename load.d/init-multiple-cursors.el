(use-package multiple-cursors
  :config
  :pretty-hydra
  ((:color teal :quit-key "q")
   ("Multiple cursors"
    (("a" mc/edit-beginnings-of-lines)
     ("e" mc/edit-ends-of-lines)))))

  (defhydra hydra-multiple-cursors (:color red)
    "
  _a_ edit beginnings of lines
  _e_ edit ends of lines
  "
    ("a" )
    ("e" )))
