;;; package --- summary
;;; Commentary:
;;; Code:
(use-package markdown-mode+)
  ;; :require markdown-mode)

(provide 'init-markdown)
;;; init-markdown ends here

(defun orgtbl-to-kramdown (table params)
  "Convert the Orgtbl mode TABLE to Kramdown."
  (let* ((alignment (mapconcat (lambda (x) (if x "|--:" "|---"))
                               org-table-last-alignment ""))
         (params2
          (list
           :splice t
	   :hline (concat alignment "|")
           :lstart "| " :lend " |" :sep " | ")))
    (orgtbl-to-generic table (org-combine-plists params2 params))))
