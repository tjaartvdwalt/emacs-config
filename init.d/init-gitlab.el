(req-package gitlab
  :require (helm-gitlab)
  :config(progn
           (setq gitlab-host "https://gitlab.com"
        gitlab-username "foo"
        gitlab-password "bar")
          )

  )
