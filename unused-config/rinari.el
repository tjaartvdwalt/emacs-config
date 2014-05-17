;; Rinari
(elpa-install 'rinari)
(require 'rinari)

(add-hook 'rhtml-mode-hook (lambda () (rinari-launch)))

