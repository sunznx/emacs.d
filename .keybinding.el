;; basic
(define-key key-translation-map [?\C-h] [?\C-?])
(fset 'quick-switch-buffer [?\C-x ?b return])
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-k") 'delete-file-and-buffer)

;; expand region
(global-set-key (kbd "C-2") 'er/expand-region)

;; counsel
(global-set-key (kbd "C-x f") 'counsel-recentf)
(global-set-key (kbd "C-x d") 'counsel-dired)
(global-set-key (kbd "C-x M-f") 'counsel-file-jump)
(global-set-key (kbd "C-s") 'swiper-thing-at-point)

;; mark-all-like-this
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)

;; duplicate-thing
(global-set-key (kbd "C-S-k") 'duplicate-thing)

(global-unset-key (kbd "C-v"))

;; format-all
(global-set-key (kbd "C-v C-n") 'format-all-region-or-buffer)

;; paredit-mode
(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "C-d") nil)
     (define-key paredit-mode-map (kbd "DEL") nil)))

;; ivy-minibuffer
(eval-after-load "ivy"
  '(progn
     (define-key ivy-minibuffer-map (kbd "C-i") 'ivy-alt-done)))

;; company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "<f1>") nil)
  (define-key company-active-map (kbd "M-i") 'company-show-doc-buffer)
  (define-key company-active-map (kbd "TAB") 'company-complete-selection))
