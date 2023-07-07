;;; keyfreq
(setq keyfreq-file (concat my-emacs-d ".keyfreq"))
(setq keyfreq-file-lock (concat my-emacs-d ".keyfreq.lock"))
(turnon-keyfreq-mode)


;;; recentf
(setq recentf-max-saved-items 204800)
(setq recentf-save-file (concat my-emacs-d ".recentf"))


;;; exec-path-from-shell
(setq exec-path-from-shell-check-startup-files nil)


;;; wakatime
(global-wakatime-mode)


;;; hungry-delete
(global-hungry-delete-mode)
(setq hungry-delete-except-modes
      '(help-mode minibuffer-mode minibuffer-inactive-mode calc-mode))


;;; transient-mark/delete-selection
(transient-mark-mode 1)
(delete-selection-mode 1)


;;; start server
(require 'server)
(unless (server-running-p)
    (server-start))

;;; scratch
(setq initial-major-mode 'fundamental-mode)

;;; window-numbering
(window-numbering-mode 1)

;;; keybinding
(defconst my-keybinding-setup-file (concat my-emacs-d ".keybinding.el")
  "My keybinding setup file.")
(load my-keybinding-setup-file t nil)
