(define-prefix-command 'my-x-map)

;; a
;; edebug?

;; b
(define-key 'my-x-map (kbd "C-b") 'helm-mini)
(define-key 'my-x-map (kbd "b") 'my-buffer-map)

;; c
(define-key 'my-x-map (kbd "C-c") 'crux-cleanup-buffer-or-region)

;; d
(define-key 'my-x-map (kbd "C-d") 'dired)
(define-key 'my-x-map (kbd "d") 'crux-recentf-find-directory)

;; e
(define-key 'my-x-map (kbd "C-e") 'my-emacs-init-file)
(define-key 'my-x-map (kbd "e t") 'my-emacs-todo-file)
(define-key 'my-x-map (kbd "e b") 'my-emacs-bindings-file)
(define-key 'my-x-map (kbd "e f") 'my-emacs-projectile-find-file)
;; (define-prefix-command 'my-emacs-d-map)
;; (define-key my-emacs-d-map (kbd "t") #'my-emacs-todo-file)
;; (define-key my-x-map (kbd "e") my-emacs-d-map)

;; f
(define-key 'my-x-map (kbd "f") 'crux-recentf-find-file)
(define-key 'my-x-map (kbd "C-f") 'helm-find-files)

;; g
(define-key 'my-x-map (kbd "g") 'magit)
(define-key 'my-x-map (kbd "C-g") 'magit)

;; h
(define-key 'my-x-map (kbd "h") 'info-emacs-manual)
(define-key 'my-x-map (kbd "C-h") 'info-emacs-manual)

;; i
;; ?

;; k
(define-key 'my-x-map (kbd "C-k") 'my-start-or-stop-kmacro)
(define-key 'my-x-map (kbd "C-S-k") 'kmacro-end-or-call-macro-repeat)
(define-key 'my-x-map (kbd "k s") 'kmacro-start-macro-or-insert-counter)
(define-key 'my-x-map (kbd "k i") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "k e") 'kmacro-end-or-call-macro-repeat)
(define-key 'my-x-map (kbd "k h") 'helm-execute-kmacro)
(define-key 'my-x-map (kbd "k x") 'kmacro-call-macro)
(define-key 'my-x-map (kbd "k c s") 'kmacro-set-counter)
(define-key 'my-x-map (kbd "k c a") 'kmacro-add-counter)
(define-key 'my-x-map (kbd "k c f") 'kmacro-set-format)
(define-key 'my-x-map (kbd "k c i") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "k s") 'kmacro-start-macro)
(define-key 'my-x-map (kbd "k e") 'kmacro-end-or-call-macro-repeat)
(define-key 'my-x-map (kbd "k n") 'kmacro-cycle-ring-next)
(define-key 'my-x-map (kbd "k p") 'kmacro-cycle-ring-previous)
(define-key 'my-x-map (kbd "k b") 'kmacro-name-last-macro)
(define-key 'my-x-map (kbd "k l") 'insert-kbd-macro)
(define-key 'my-x-map (kbd "k i") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "k b") 'kmacro-bind-to-key)
(define-key 'my-x-map (kbd "k r") 'kmacro-to-register)

;; l
(define-key 'my-x-map (kbd "l") 'lsp)
(define-key lsp-command-map (kbd "C-r") 'lsp-rename)
(define-key lsp-command-map (kbd "C-o") 'lsp-organize-imports)
(define-key 'my-x-map (kbd "C-l") lsp-command-map)

;; m
(defhydra hydra-frame-management (global-map "C-x m")
  "frame"
  ("<left>" move-frame-left)
  ("<right>" move-frame-right)
  ("<down>" move-frame-down)
  ("<up>" move-frame-up)
  ("E" enlarge-frame "enlarge-frame")
  ("S" shrink-frame "shrink-frame")
  ("b" switch-to-buffer-other-frame "switch-to-buffer-other-frame")
  ("d" delete-frame "delete-frame")  
  ("d" dired-other-frame "dired-other-frame")	
  ("e" enlarge-frame-horizontally "enlarge-frame-horizontally")
	("k" delete-frame "kill-frame")
	("0" delete-frame "kill-frame")    
  ("n" make-frame "make-frame")  
  ("o" other-frame "other-frame")
  ("q" nil)
  ("s" shrink-frame-horizontally "shrink-frame-horizontally")
  ("w" hydra-window-management/body "window"))
(define-key 'my-x-map (kbd "<C-m>") 'make-frame)

;; n

;; o
(define-key 'my-x-map (kbd "C-o") #'org-agenda)
(define-key 'my-x-map (kbd "o a") #'org-agenda)
(define-key 'my-x-map (kbd "o l") #'org-store-link)
(define-key 'my-x-map (kbd "o c") #'org-capture)

;; p
(define-key 'my-x-map (kbd "p") 'projectile-command-map)
(define-key 'my-x-map (kbd "C-p") 'projectile-find-file)

;; q

;; r
(define-prefix-command 'my-rectangle-map)
(define-key 'my-x-map (kbd "C-r") 'kill-rectangle)
(define-key 'my-x-map (kbd "r") 'my-rectangle-map)
(define-key 'my-rectangle-map (kbd "k") 'kill-rectangle)
(define-key 'my-rectangle-map (kbd "M-w") 'copy-rectangle-as-kill)
(define-key 'my-rectangle-map (kbd "w") 'copy-rectangle-as-kill)
(define-key 'my-rectangle-map (kbd "d") 'delete-rectangle)
(define-key 'my-rectangle-map (kbd "y") 'yank-rectangle)
(define-key 'my-rectangle-map (kbd "o") 'open-rectangle)
(define-key 'my-rectangle-map (kbd "c") 'clear-rectangle)
(define-key 'my-rectangle-map (kbd "n") 'rectangle-number-lines)
(define-key 'my-rectangle-map (kbd "_") 'delete-whitespace-rectangle)
(define-key 'my-rectangle-map (kbd "%") 'string-rectangle)
(define-key 'my-rectangle-map (kbd "i") 'string-insert-rectangle)
(define-key 'my-rectangle-map (kbd "SPC") 'rectangle-mark-mode)

;; s
(define-key 'my-x-map (kbd "C-s") 'save-buffer)
(define-key 'my-x-map (kbd "s") 'save-some-buffers)

;; t
(define-key 'my-x-map (kbd "C-t") 'my-new-vterm)

;; u

;; v

;; w
(defhydra hydra-window-management (global-map "C-x w")
  "window"
  ("<left>" windmove-left)
  ("<right>" windmove-right)
  ("<down>" windmove-down)
  ("<up>" windmove-up)
  ("|" my-toggle-window-split)
  ("0" delete-window "nuke")
  ("1" delete-other-windows "delete")
  ("2" double-window "double")
  ("b" split-window-below "below")
  ("b" switch-to-buffer-other-window "switch")
  ("f" find-file "file")
  ("F" find-file-other-window "F")
  ("h" split-window-horizontally "horizontally")
  ("m" maximize-window "maximize")
  ("o" other-window "other")
  ("q" nil)
  ("r" split-window-right "right")
  ("s" crux-swap-windows "swap")
  ("t" crux-transpose-windows "transpose") 
  ("v" split-window-vertically "vertically")
  ("f" hydra-frame-management/body "frame"))
(global-set-key (kbd "C-x C-w") 'other-window)

;; x
;; ?

;; y
(define-key 'my-x-map (kbd "C-y") 'yas-expand)
;; (define-key 'my-x-map (kbd "y") nil)
(define-key 'my-x-map (kbd "y n") 'yas-new-snippet)
(define-key 'my-x-map (kbd "y i") 'yas-insert-snippet)
(define-key 'my-x-map (kbd "y x") 'yas-expand)	


;; z
;; ?

(defhydra hydra-text-scale (global-map "C-x C-=")
  "text scale"
  ("i" text-scale-increase "increase")
  ("d" text-scale-decrease "decrease"))

(global-set-key (kbd "C-x") 'my-x-map)
(global-set-key (kbd "C-S-x") 'my-x-map)

(provide 'bindings-c-x)
