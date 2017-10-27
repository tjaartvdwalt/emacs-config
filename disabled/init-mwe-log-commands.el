(use-package mwe-log-commands
  :bind(("C-c m l" . clm/toggle-command-log-buffer))
  :config((global-unset-key (kbd "\C-c o"))))
