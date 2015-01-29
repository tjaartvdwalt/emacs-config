;; On the python side you need the following installed:
;; pip install flake8
;; And either rope or jedi
;; pip install rope (Python3 rope_py3k)
;; pip install jedi

(req-package elpy
  :config(progn  (elpy-enable)))
