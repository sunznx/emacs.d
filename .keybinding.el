(define-key key-translation-map [?\C-h] [?\C-?])
(fset 'quick-switch-buffer [?\C-x ?b return])

;; expand region
(global-set-key (kbd "C-2") 'er/expand-region)

;; counsel
(global-set-key (kbd "C-x f") 'counsel-recentf)

;; mark-all-like-this
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)

;; duplicate-thing
(global-set-key (kbd "C-S-k") 'duplicate-thing)

(global-unset-key (kbd "C-v"))
