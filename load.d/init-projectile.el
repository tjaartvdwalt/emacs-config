(use-package projectile
  :diminish projectile-mode
  :config
  (progn
    (projectile-global-mode +1)
    ;; (setq projectile-indexing-method 'native)
    (setq projectile-enable-caching t)
    (setq projectile-completion-system 'ivy)
    (add-to-list 'projectile-other-file-alist '("js" "hbs"))
    (add-to-list 'projectile-other-file-alist '("hbs" "js"))
    ;; (setq projectile-switch-project-action 'projectile-dired)
    ))

(define-key global-map (kbd "C-c .") 'hydra-projectile/body)

(defhydra hydra-projectile (:color teal
			    :columns 4)
  "Projectile"
  ("p f"   projectile-find-file                "Find File")
  ("r"   projectile-recentf                  "Recent Files")
  ("z"   projectile-cache-current-file       "Cache Current File")
  ("x"   projectile-remove-known-project     "Remove Known Project")

  ("d"   projectile-find-dir                 "Find Directory")
  ("b"   projectile-switch-to-buffer         "Switch to Buffer")
  ("c"   projectile-invalidate-cache         "Clear Cache")
  ("X"   projectile-cleanup-known-projects   "Cleanup Known Projects")

  ("o"   projectile-multi-occur              "Multi Occur")
  ("s"   projectile-switch-project           "Switch Project")
  ("k"   projectile-kill-buffers             "Kill Buffers")
  ("q"   nil "Cancel" :color blue))

C-c p f	Display a list of all files in the project. With a prefix argument it will clear the cache first.
C-c p F	Display a list of all files in all known projects.
C-c p g	Display a list of all files at point in the project. With a prefix argument it will clear the cache first.
C-c p 4 f	Jump to a project's file using completion and show it in another window.
C-c p 4 g	Jump to a project's file based on context at point and show it in another window.
C-c p 5 f	Jump to a project's file using completion and show it in another frame.
C-c p 5 g	Jump to a project's file based on context at point and show it in another frame.
C-c p d	Display a list of all directories in the project. With a prefix argument it will clear the cache first.
C-c p 4 d	Switch to a project directory and show it in another window.
C-c p 5 d	Switch to a project directory and show it in another frame.
C-c p T	Display a list of all test files(specs, features, etc) in the project.
C-c p l	Display a list of all files in a directory (that's not necessarily a project)
C-c p s g	Run grep on the files in the project.
M-- C-c p s g	Run grep on projectile-grep-default-files in the project.
C-c p v	Run vc-dir on the root directory of the project.
C-c p V	Browse dirty version controlled projects.
C-c p b	Display a list of all project buffers currently open.
C-c p 4 b	Switch to a project buffer and show it in another window.
C-c p 5 b	Switch to a project buffer and show it in another frame.
C-c p 4 C-o	Display a project buffer in another window without selecting it.
C-c p a	Switch between files with the same name but different extensions.
C-c p 4 a	Switch between files with the same name but different extensions in other window.
C-c p 5 a	Switch between files with the same name but different extensions in other frame.
C-c p o	Runs multi-occur on all project buffers currently open.
C-c p r	Runs interactive query-replace on all files in the projects.
C-c p i	Invalidates the project cache (if existing).
C-c p R	Regenerates the projects TAGS file.
C-c p j	Find tag in project's TAGS file.
C-c p k	Kills all project buffers.
C-c p D	Opens the root of the project in dired.
C-c p 4 D	Opens the root of the project in dired in another window.
C-c p 5 D	Opens the root of the project in dired in another frame.
C-c p e	Shows a list of recently visited project files.
C-c p E	Opens the root dir-locals-file of the project.
C-c p s s	Runs ag on the project. Requires the presence of ag.el.
C-c p !	Runs shell-command in the root directory of the project.
C-c p &	Runs async-shell-command in the root directory of the project.
C-c p C	Runs a standard configure command for your type of project.
C-c p c	Runs a standard compilation command for your type of project.
C-c p P	Runs a standard test command for your type of project.
C-c p t	Toggle between an implementation file and its test file.
C-c p 4 t	Jump to implementation or test file in other window.
C-c p 5 t	Jump to implementation or test file in other frame.
C-c p z	Adds the currently visited file to the cache.
C-c p p	Display a list of known projects you can switch to.
C-c p S	Save all project buffers.
C-c p m	Run the commander (an interface to run commands with a single key).
C-c p ESC	Switch to the most recently selected Projectile buffer.
