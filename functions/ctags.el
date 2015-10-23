(defun build-ctags ()
(interactive)
(message "building project tags")
(let ((root '("/home/tjaart/solmates/mvp_webclient/www/js/view/")))
  (shell-command (concat "ctags -e -R --extra=+fq --exclude=db --exclude=test --exclude=.git --exclude=public -f " root "TAGS " root))
(visit-project-tags)
(message "tags built successfully")))

(defun visit-project-tags ()
  (interactive)
  (let ((tags-file (concat (eproject-root) "TAGS")))
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))

