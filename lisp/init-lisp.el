;; -*- coding: utf-8; lexical-binding: t; -*-

;; A quick way to jump to the definition of a function given its key binding
(global-set-key (kbd "C-h K") 'find-function-on-key)

(with-eval-after-load 'paredit
  (diminish 'paredit-mode " Par"))

(defvar paredit-minibuffer-commands '(eval-expression
                                      pp-eval-expression
                                      eval-expression-with-eldoc
                                      ibuffer-do-eval
                                      ibuffer-do-view-and-eval)
  "Interactive commands for which paredit should be enabled in the minibuffer.")

(defun my-lisp-setup ()
  "Enable features useful in any Lisp mode."
  (enable-paredit-mode)
  (rainbow-delimiters-mode t)
  (turn-on-eldoc-mode))

(let* ((hooks '(lisp-mode-hook
                inferior-lisp-mode-hook)))
  (dolist (hook hooks)
    (add-hook hook 'my-lisp-setup)))

(defun elisp-mode-hook-setup ()
  (unless (my-buffer-file-temp-p)
    (my-ensure 'eldoc)
    (turn-on-eldoc-mode)
    (enable-paredit-mode)
    (rainbow-delimiters-mode t)

    ;; Locally set `hippie-expand' completion functions for use with Emacs Lisp.
    (make-local-variable 'hippie-expand-try-functions-list)
    (push 'try-complete-lisp-symbol hippie-expand-try-functions-list)
    (push 'try-complete-lisp-symbol-partially hippie-expand-try-functions-list)

    (checkdoc-minor-mode 1)))

(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hook-setup)

(provide 'init-lisp)
