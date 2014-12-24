;; This function helps to visualize user defined shortcuts
(discover-add-context-menu
 :context-menu '(isearch
              (description "User defined shortcuts")
              (actions
               ("Projectile"
                ("p" "Run some projectile command" isearch-forward-symbol))))
 :bind "C-;")
