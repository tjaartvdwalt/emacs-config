;************* Enable some build in modes *******************
;; Show line numbers
(global-linum-mode t)
;; Show whitespace chars
(global-whitespace-mode t)
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
;; Dont show the splash screen
(setq inhibit-splash-screen t)
