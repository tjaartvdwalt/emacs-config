;;; package --- summary
;;; Commentary:
;;; Code:
(req-package readline-complete
  :require (company)
  :config
  (progn
(setq explicit-shell-file-name "bash")
(setq explicit-bash-args '("-c" "export EMACS=; stty echo; bash"))
(setq comint-process-echoes t)))
