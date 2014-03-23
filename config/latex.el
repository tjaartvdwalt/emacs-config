;; we use cdlatex with org-mode
(elpa-install 'cdlatex)

;; Configure ebib for bibliography
(elpa-install 'ebib)
(require 'ebib)

;; Use biber for creating bibliography
(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
        "biber %b"
        "pdflatex -interaction nonstopmode -output-directory %o %f"
        "pdflatex -interaction nonstopmode -output-directory %o %f"))
