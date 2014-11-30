(defun ace-jump-buffer-wrapper ()
    (interactive)
  "If we are in a projectile project, use
   ace-jump-projectile-buffers otherwise use ace-jump-buffer"

  (declare-function projectile-project-p "projectile.el" nil)
   (if (eq (projectile-project-p) nil) (setq ajb-bs-configuration "all")
    (setq ajb-bs-configuration "projectile"))
  (ace-jump-buffer))
