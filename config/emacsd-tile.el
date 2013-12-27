;; emacsd-tile.el -- tiling windows for emacs

(defun swap-with (dir)
  (interactive)
  (let ((other-window (windmove-find-other-window dir)))
    (when other-window
      (let* ((this-window  (selected-window))
             (this-buffer  (window-buffer this-window))
             (other-buffer (window-buffer other-window))
             (this-start   (window-start this-window))
             (other-start  (window-start other-window)))
        (set-window-buffer this-window  other-buffer)
        (set-window-buffer other-window this-buffer)
        (set-window-start  this-window  other-start)
        (set-window-start  other-window this-start)))))

(global-set-key (kbd "C-M-T") (lambda () (interactive) (swap-with 'down)))
(global-set-key (kbd "C-M-C") (lambda () (interactive) (swap-with 'up)))
(global-set-key (kbd "C-M-H") (lambda () (interactive) (swap-with 'left)))
(global-set-key (kbd "C-M-N") (lambda () (interactive) (swap-with 'right)))

(global-set-key (kbd "M-T") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "M-C") (lambda () (interactive) (enlarge-window -1)))
(global-set-key (kbd "M-H") (lambda () (interactive) (enlarge-window -1 t)))
(global-set-key (kbd "M-N") (lambda () (interactive) (enlarge-window 1 t)))

(global-set-key (kbd "M-t") 'windmove-down)
(global-set-key (kbd "M-c") 'windmove-up)
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-n") 'windmove-right)

(provide 'emacsd-tile)
