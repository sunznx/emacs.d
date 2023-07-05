;; -*- coding: utf-8; lexical-binding: t; -*-

(global-hl-line-mode 1)
(blink-cursor-mode -1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

(setq default-font "-apple-Monaco-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
(setq presentation-font "-apple-Monaco-medium-normal-normal-*-21-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default nil :font default-font)

;; Default theme
(defun use-presentation-theme ()
  (interactive)
  (when (boundp 'presentation-font)
    (set-face-attribute 'default nil :font presentation-font)))

(defun use-default-theme ()
  (interactive)
  (load-theme 'default-black t)
  (when (boundp 'default-font)
    (set-face-attribute 'default nil :font default-font)))

(defun toggle-presentation-mode ()
  (interactive)
  (if (string= (frame-parameter nil 'font) default-font)
      (use-presentation-theme)
    (use-default-theme)))

(use-default-theme)

(provide 'init-theme)
;;; init-theme.el ends here
