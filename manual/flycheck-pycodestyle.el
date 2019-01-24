;;; flycheck-pycodestyle --- pycodestyle support for flycheck

;; Author: Daniel Kertesz
;; Version: 1.0
;; Keywords: python, pep8
;; URL: https://github.com/piger/flycheck-pycodestyle

;;; Commentary:
;; Is this really all that it takes to support pycodestle?

;;; Code:

;(require 'flycheck)

;(flycheck-define-checker python-pycodestyle
  ;"A Python syntax and style checker using pycodestyle (former pep8)."

  ;:command ("pycodestyle" source-inplace)
  ;:error-patterns
  ;((error line-start (file-name) ":" line ":" column ":" (message) line-end))
  ;:modes python-mode)

;(add-to-list 'flycheck-checkers 'python-pycodestyle)

;(provide 'flycheck-pycodestyle)
;;; flycheck-pycodestyle.el ends here
