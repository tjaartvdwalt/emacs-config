;************* Set some theme details *******************
;; Set the theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-next-pair-timer-geo-mean (quote ((default 0.0005 0))))
 '(browse-url-dwim-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(global-auto-complete-mode t)
 '(keep-end-mode t)
 '(rails-ws:default-server-type "webrick")
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))

;; Get deadkeys to work
(require 'iso-transl)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(load "~/.emacs.d/config/repo-config")
(load "~/.emacs.d/config/elpa")

(load "~/.emacs.d/config/el-get")

(load "~/.emacs.d/config/modes")
(load "~/.emacs.d/config/file-extensions")
(load "~/.emacs.d/config/abandoned")
