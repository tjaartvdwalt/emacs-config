(revert-buffer true true nil)
        (errbuf (get-buffer-create "*Standardformat Errors*"))

(call-process "standard-format" nil nil nil "-w" (buffer-file-name))
