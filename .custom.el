;;; keyfreq
(setq keyfreq-file (concat my-emacs-d ".keyfreq"))
(setq keyfreq-file-lock (concat my-emacs-d ".keyfreq.lock"))
(turnon-keyfreq-mode)


;;; recentf
(setq recentf-save-file (concat my-emacs-d ".recentf"))


;;; exec-path-from-shell
(setq exec-path-from-shell-check-startup-files nil)


;;; wakatime
(global-wakatime-mode)


;;; hungry-delete
(global-hungry-delete-mode)


;;; transient-mark/delete-selection
(transient-mark-mode 1)
(delete-selection-mode 1)
