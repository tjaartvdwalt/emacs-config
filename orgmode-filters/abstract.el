;; During export headlines which have the "ignore" tag are removed
;; from the parse tree.  Their contents are retained (leading to a
;; possibly invalid parse tree, which nevertheless appears to function
;; correctly with most export backends) all children headlines are
;; retained and are promoted to the level of the ignored parent
;; headline.
;;
;; This makes it possible to add structure to the original Org-mode
;; document which does not effect the exported version, such as in the
;; following examples.
;;
;; Wrapping an abstract in a headline
;;
;;     * Abstract                        :ignore:
;;     #+LaTeX: \begin{abstract}
;;     #+HTML: <div id="abstract">
;;
;;     ...
;;
;;     #+HTML: </div>
;;     #+LaTeX: \end{abstract}
;;
;; Placing References under a headline (using ox-bibtex in contrib)
;;
;;     * References                     :ignore:
;;     #+BIBLIOGRAPHY: dissertation plain
;;
;; Inserting an appendix for LaTeX using the appendix package.
;;
;;     * Appendix                       :ignore:
;;     #+LaTeX: \begin{appendices}
;;     ** Reproduction
;;     ...
;;     ** Definitions
;;     #+LaTeX: \end{appendices}
;;
(defun org-export-ignore-headlines (data backend info)
  "Remove headlines tagged \"ignore\" retaining contents and promoting children.
Each headline tagged \"ignore\" will be removed retaining its
contents and promoting any children headlines to the level of the
parent."
  (org-element-map data 'headline
    (lambda (object)
      (when (member "ignore" (org-element-property :tags object))
        (let ((level-top (org-element-property :level object))
              level-diff)
          (mapc (lambda (el)
                  ;; recursively promote all nested headlines
                  (org-element-map el 'headline
                    (lambda (el)
                      (when (equal 'headline (org-element-type el))
                        (unless level-diff
                          (setq level-diff (- (org-element-property :level el)
                                              level-top)))
                        (org-element-put-property el
                          :level (- (org-element-property :level el)
                                    level-diff)))))
                  ;; insert back into parse tree
                  (org-element-insert-before el object))
                (org-element-contents object)))
        (org-element-extract-element object)))
    info nil)
  data)

(add-hook 'org-export-filter-parse-tree-functions 'org-export-ignore-headlines)
