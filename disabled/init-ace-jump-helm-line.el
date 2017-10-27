(use-package ace-jump-helm-line
  :require(helm)
  :config(progn
           (eval-after-load "helm"
            '(define-key helm-map (kbd "C-,") 'ace-jump-helm-line)) ))
