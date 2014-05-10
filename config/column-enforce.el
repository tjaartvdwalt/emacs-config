;; column-enforce-mode
(elpa-install 'column-enforce-mode)
(require 'column-enforce-mode)

(add-hook 'prog-mode-hook 'column-enforce-mode)

(global-set-key "\C-cc" 'column-enforce-mode)

