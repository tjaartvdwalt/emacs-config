;;; package --- summary
;;; Commentary:
;;; On Arch linux I have `aspell' and `aspell-en' installed.
;;; According to http://www.emacswiki.org/emacs/InteractiveSpell this
;;; gets automatically configured in emacs 24.4+
;;;
;;; I also have `words-insane' installed as completion for ac-ispell
;;; Code:

(req-package ispell
  :diminish ispell-minor-mode
  :bind
  ;; instead of having ispell shortcuts, I now use helm-flyspell 
  ;; ("C-c i w" . ispell-word)
  ;; ("C-c i b" . ispell-buffer))

  :config
  (progn
    (add-hook 'text-mode-hook 'ispell-minor-mode)
    (setq ispell-alternate-dictionary "/usr/share/dict/words-insane")
    ;; (setq ispell-change-dictionary "british")
    ;; (global-set-key "\C-cs" 'ispell-buffer)
    ;; (global-set-key "\C-cn" 'ispell-word)
    ))

(provide 'init-ispell)
;;; init-ispell ends here
