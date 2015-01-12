(require 'discover)
(require 'discover-my-major)

(defun  dk/discover-keybindings(&optional prefix)
  "Describes my personal keybindings using discover."

  ;; Use discover-my-major to parse the result from
  ;; describe-buffer-bindings into a format that is *almost* the way
  ;; we want it, and then we change it from there. If I learnt more
  ;; elisp I could probably rewrite this to do what we want in 1 pass
  ;; instead of 2
  (dk/get-next-section (dmm/descbinds-all-sections (current-buffer) prefix t)))

(defun dk/get-next-section (list)
  (let (return-list)
    (dolist (elt list return-list)
       (setq return-list (return-list elt))
                )))


;; (describe-buffer-bindings (current-buffer) (kbd "C-c"))
;; (dk/discover-keybindings (kbd "C-c"))
