(defun ace-jump-buffer-wrapper ()
    (interactive)
  "If we are in a projectile project, use
   ace-jump-projectile-buffers otherwise use ace-jump-buffer"
  (if (eq (projectile-project-name) nil) (setq ajb-bs-configuration "all")
    (setq ajb-bs-configuration "projectile"))
  (ace-jump-buffer))
