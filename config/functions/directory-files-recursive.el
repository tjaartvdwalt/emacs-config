;;;
;;; Recursively list files in a given directory
;;;
;;; Author:    daniel m german dmg at uvic dot ca
;;; Copyright: daniel m german
;;; License:   Same as Emacs
;;;
(defun directory-files-recursive (directory match maxdepth)
  "List files in DIRECTORY and in its sub-directories.
   Return files that match the regular expression MATCH but ignore
   files and directories that match IGNORE (IGNORE is tested before MATCH. Recurse only
   to depth MAXDEPTH. If zero or negative, then do not recurse"
  (let* ((files-list '())
         (current-directory-list
          (directory-files directory t)))
    ;; while we are in the current directory
    (while current-directory-list
      (let ((f (car current-directory-list)))
        (cond
         ;; ((and
         ;;   ignore ;; make sure it is not nil
         ;;   (string-match ignore f))
         ;;                                ; ignore
         ;;  nil
         ;;  )
         ((and
           (file-regular-p f)
           (file-readable-p f)
           (string-match match f))
          (setq files-list (cons f files-list))
          )
         ((and
           (file-directory-p f)
           (file-readable-p f)
           (not (string-equal ".." (substring f -2)))
           (not (string-equal "." (substring f -1)))
           (> maxdepth 0))
          ;; recurse only if necessary
          (setq files-list (append files-list (directory-files-recursive f match (- maxdepth -1))))
          (setq files-list (cons f files-list))
          )
         (t)
         )
        )
      (setq current-directory-list (cdr current-directory-list))
      )
    files-list
    )
  )
