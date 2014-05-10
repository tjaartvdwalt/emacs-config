(setq vc-make-backup-files t)

(setq version-control t ;; Use version numbers for backups.
        kept-new-versions 10 ;; Number of newest versions to keep.
        kept-old-versions 0 ;; Number of oldest versions to keep.
        delete-old-versions t ;; Don't ask to delete excess backup versions.
        backup-by-copying t) ;; Copy all files, don't rename them.
  
  ;; If you want to avoid 'backup-by-copying', you can instead use
  ;;
  ;; (setq backup-by-copying-when-linked t)
  ;;
  ;; but that makes the second, "per save" backup below not run, since
  ;; buffers with no backing file on disk are not backed up, and
  ;; renaming removes the backing file.  The "per session" backup will
  ;; happen in any case, you'll just have less consistent numbering of
  ;; per-save backups (i.e. only the second and subsequent save will
  ;; result in per-save backups).
  
  ;; If you want to avoid backing up some files, e.g. large files,
  ;; then try setting 'backup-enable-predicate'.  You'll want to
  ;; extend 'normal-backup-enable-predicate', which already avoids
  ;; things like backing up files in '/tmp'.

  ;; Default and per-save backups go here:
  (setq backup-directory-alist '(("" . "~/emacs_backup/per-save")))

(defun force-backup-of-buffer ()
    ;; Make a special "per session" backup at the first save of each
    ;; emacs session.
    (when (not buffer-backed-up)
      ;; Override the default parameters for per-session backups.
      (let ((backup-directory-alist '(("" . "~/emacs_backup/per-session")))
            (kept-new-versions 3))
        (backup-buffer)))
    ;; Make a "per save" backup on each save.  The first save results in
    ;; both a per-session and a per-save backup, to keep the numbering
    ;; of per-save backups consistent.
    (let ((buffer-backed-up nil))
      (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)
