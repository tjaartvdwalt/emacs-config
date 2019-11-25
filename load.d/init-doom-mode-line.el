(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode t)
  :config
  ;; (setq doom-modeline-height 10)
  ;; (setq doom-modeline-width 1)
  (setq doom-modeline-major-mode-icon t)
  (setq doom-modeline-modal-icon t)
  (setq doom-modeline-indent-info t)
  (setq doom-modeline-env-version t)
  (setq doom-modeline-enable-word-count 1)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-vcs-max-length 30)
  ;; (setq doom-modeline-project-detection 'projectile)
  (setq doom-modeline-buffer-file-name-style 'relative-from-project))

(defun doom-modeline-server ()
  "set graphical mode"
  (interactive)
  (progn
    (setq doom-modeline-icon (display-graphic-p))
	(doom-modeline-mode t)))
