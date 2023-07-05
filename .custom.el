;;; keyfreq
(setq keyfreq-file (concat my-emacs-d ".keyfreq"))
(setq keyfreq-file-lock (concat my-emacs-d ".keyfreq.lock"))
(turnon-keyfreq-mode)


;;; exec-path-from-shell
(setq exec-path-from-shell-check-startup-files nil)


;;; wakatime
(global-wakatime-mode)
