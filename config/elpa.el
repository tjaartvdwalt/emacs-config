;;************* Install ELPA plugins *******************
;; a helper method to install a package before configuring
(defun elpa-install (package)
  (when (not (package-installed-p package))
    (package-install package))
)

;;************* Configure ELPA plugins *******************
;; dired+
(elpa-install 'dired+)
(require 'dired+)
    ;; Configure dired to sort directories first
    (setq dired-listing-switches "-aBhl --group-directories-first")
;; gimme
(elpa-install 'gimme)
(require 'gimme)

;; auto-complete
(elpa-install 'auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)
     (ac-config-default)
     (global-auto-complete-mode t)
     (setq ac-auto-start 2)
;; magit
(elpa-install 'magit)
(require 'magit)
(define-key shell-switcher-mode-map (kbd "C-x m")
	    'magit-status)
;; change magit diff colors
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

;; auto-indent
(elpa-install 'auto-indent-mode)
(require 'auto-indent-mode)
;; I don't really like the way auto indent works, so I disable it by default
;; Rather use C-j instead of RET to get indentation
;;     (auto-indent-global-mode)

;; ruby end
(elpa-install 'ruby-end)
(require 'ruby-end)

;; json mode
(elpa-install 'json-mode)
(require 'json-mode)

;; enclose
(elpa-install 'enclose)
(require 'enclose)
     (enclose-mode t)

;; shell switcher
(shell-switcher-mode t)
(define-key shell-switcher-mode-map (kbd "C-=")
	    'shell-switcher-switch-buffer)
(define-key shell-switcher-mode-map (kbd "C-x 4 =")
	    'shell-switcher-switch-buffer-other-window)
(define-key shell-switcher-mode-map (kbd "C-M-=")
	    'shell-switcher-new-shell)

;; sunrise commander
(elpa-install 'sunrise-commander)
(require 'sunrise-commander)
(elpa-install 'sunrise-x-tree)
(require 'sunrise-x-tree)

;; anything
(elpa-install 'anything)
(require 'anything)

;; browse-url-dwim
(elpa-install 'browse-url-dwim)
(require 'browse-url-dwim)
     (browse-url-dwim-mode 1)
     (setq browse-url-dwim-always-confirm-extraction nil)

;; mark-down-mode
(elpa-install 'markdown-mode)
(require 'markdown-mode)

;;;; rinani
;;;; Interactively Do Things (highly recommended, but not strictly required)
(elpa-install 'ido)
(require 'ido)
     (ido-mode t)
;;;;
;;;;       ;; Rinari
(elpa-install 'rinari)
(require 'rinari)

;; RVM
(elpa-install 'rvm)
(require 'rvm)
     (rvm-use-default)

;; js2-mode
(elpa-install 'js2-mode)
(require 'js2-mode)

;; rspec-mode
(elpa-install 'rspec-mode)
(require 'rspec-mode)

;; header2
(elpa-install 'header2)
(require 'header2)
(add-hook 'ruby-mode 'auto-make-header)

;; mmm-mode
;;     (require 'mmm-auto)
;;     (setq mmm-global-mode 'maybe)
;;     (mmm-add-mode-ext-class 'html-mode "\\.erb\\'" 'ruby-mode)
