;; midnight mode
(require 'midnight)

;;Clean buffers that are older than 1 day old
(setq clean-buffer-list-delay-general 1)

(defvar clean-buffer-list-timer nil
      "Stores clean-buffer-list timer if there is one. You can disable clean-buffer-list by (cancel-timer clean-buffer-list-timer).")

;; run clean-buffer-list every 2 hours
(setq clean-buffer-list-timer (run-at-time t 7200 'clean-buffer-list))


