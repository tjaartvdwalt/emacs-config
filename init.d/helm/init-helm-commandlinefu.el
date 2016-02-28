;; For the shortcut to work you need the clf command line installed
;; Easiest way to do this is using Pip
;; pip clf

(req-package helm-commandlinefu
      :bind ("C-c h f" . helm-commandlinefu-search-clf))
