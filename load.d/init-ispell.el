;;; package --- summary
;;; Commentary:
;;; On Arch linux I have `aspell' and `aspell-en' installed.
;;; According to http://www.emacswiki.org/emacs/InteractiveSpell this
;;; gets automatically configured in emacs 24.4+
;;;
;;; I also have `words-insane' installed as completion for ac-ispell
;;; Code:

(use-package ispell
  :delight ispell-minor-mode
  ;; instead of having ispell shortcuts, I now use flyspell
  ;; :bind
  ;; ("C-c i w" . ispell-word)
  ;; ("C-c i b" . ispell-buffer))

  :config
  (progn
    (add-hook 'text-mode-hook 'ispell-minor-mode)
    (setq ispell-alternate-dictionary "/usr/share/dict/words-insane")
    ;; (setq ispell-change-dictionary "british")
    ;; (global-set-key "\C-cs" 'ispell-buffer)
    ;; (global-set-key "\C-cn" 'ispell-word)
    )
  (use-package flyspell
    :delight flyspell-mode
    :config
    (add-hook 'text-mode-hook 'flyspell-mode)
    (add-hook 'prog-mode-hook 'flyspell-prog-mode)
    (define-key flyspell-mode-map (kbd "M-TAB") nil)
    (define-key flyspell-mode-map (kbd "C-.") nil)
    (use-package flyspell-correct-ivy
      :bind ("C-c s" . flyspell-correct-previous-word-generic))))

(provide 'init-ispell)
;;; init-ispell ends here
