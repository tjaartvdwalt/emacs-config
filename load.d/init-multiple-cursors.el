(use-package multiple-cursors
  :config
  :pretty-hydra
  ((:color teal :quit-key "q")
   ("Multiple cursors"
    (("a" mc/edit-beginnings-of-lines)
     ("e" mc/edit-ends-of-lines)))))
