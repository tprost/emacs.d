(define-prefix-command 'my-x-map)
(define-prefix-command 'my-cmx-map)



(global-set-key (kbd "C-M-x") nil)
(global-set-key (kbd "C-M-x") 'my-cmx-map)
(define-key emacs-lisp-mode-map (kbd "C-M-x") nil)
(define-key 'my-cmx-map (kbd "C-M-a") 'make-frame)
(define-key 'my-cmx-map (kbd "C-M-b C-M-a") 'beginning-of-buffer)
(define-key 'my-cmx-map (kbd "C-M-b C-M-e") 'end-of-buffer)
;; (global-set-key (kbd "C-M-x C-M-a C-M-a") 'make-frame)
;; (global-set-key (kbd "C-M-x C-M-a C-M-o") 'other-frame)


																								 


;; a
(define-key emacs-lisp-mode-map (kbd "C-x C-a") nil)
(global-set-key (kbd "C-x C-a") nil)
(defhydra hydra-frame-management (global-map "C-x a")
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
(define-key 'my-x-map (kbd "C-a") 'make-frame)
(define-key 'my-x-map (kbd "a") 'hydra-frame-management/body)

;; b
(define-key 'my-x-map (kbd "C-b") 'helm-buffers-list)
(define-key 'my-x-map (kbd "b") 'my-buffer-map)
(define-prefix-command 'my-buffer-map)
(define-key 'my-buffer-map (kbd "r") 'crux-rename-file-and-buffer)
(define-key 'my-buffer-map (kbd "a") 'beginning-of-buffer)
(define-key 'my-buffer-map (kbd "b") 'beginning-of-buffer)
(define-key 'my-buffer-map (kbd "c") 'cleanup-buffer)
(define-key 'my-buffer-map (kbd "d") 'crux-delete-file-and-buffer)
(define-key 'my-buffer-map (kbd "e") 'end-of-buffer)
(define-key 'my-buffer-map (kbd "k") 'kill-current-buffer)
(define-key 'my-buffer-map (kbd "m") 'mark-whole-buffer)
(define-key 'my-buffer-map (kbd "n") 'next-buffer)
(define-key 'my-buffer-map (kbd "p") 'previous-buffer)
(define-key 'my-buffer-map (kbd "r") 'rename-buffer)
(define-key 'my-buffer-map (kbd "v") 'revert-buffer)
(define-key 'my-buffer-map (kbd "w") 'erase-buffer)

;; c
(define-key 'my-x-map (kbd "C-c") 'crux-cleanup-buffer-or-region)

;; d
(define-key 'my-x-map (kbd "C-d") 'my-dired-dwim)
(define-key 'my-x-map (kbd "d") 'crux-recentf-find-directory)

;; e
(define-key 'my-x-map (kbd "C-e C-f") 'my-emacs-projectile-find-file)
(define-key 'my-x-map (kbd "C-e C-t") 'my-emacs-todo-file)
(define-key 'my-x-map (kbd "C-e C-b") 'my-emacs-bindings-file)
(define-key 'my-x-map (kbd "C-e C-f") 'my-emacs-projectile-find-file)
;; (define-prefix-command 'my-emacs-d-map)
;; (define-key my-emacs-d-map (kbd "t") #'my-emacs-todo-file)
;; (define-key my-x-map (kbd "e") my-emacs-d-map)

;; f
(define-key 'my-x-map (kbd "C-f") 'helm-find-files)
(define-key 'my-x-map (kbd "f") nil)
(define-key 'my-x-map (kbd "f r") 'crux-rename-file-and-buffer)
(define-key 'my-x-map (kbd "f f") 'crux-recentf-find-file)

;; g
(define-key 'my-x-map (kbd "C-g") 'magit)
(define-key 'my-x-map (kbd "g") 'magit)

;; h
(define-key 'my-x-map (kbd "C-h") 'info-emacs-manual)
(define-key 'my-x-map (kbd "h") 'info-emacs-manual)

;; i
;; ?

;; k
(define-key 'my-x-map (kbd "C-k") nil)
;; (define-key 'my-x-map (kbd "C-k") 'my-start-or-stop-kmacro)
;; (define-key 'my-x-map (kbd "C-S-k") 'kmacro-end-or-call-macro-repeat)
;; (define-key 'my-x-map (kbd "k s") 'kmacro-start-macro-or-insert-counter)
;; (define-key 'my-x-map (kbd "k i") 'kmacro-insert-counter)
;; (define-key 'my-x-map (kbd "k e") 'kmacro-end-or-call-macro-repeat)
;; (define-key 'my-x-map (kbd "k h") 'helm-execute-kmacro)
;; (define-key 'my-x-map (kbd "k x") 'kmacro-call-macro)
;; (define-key 'my-x-map (kbd "k c s") 'kmacro-set-counter)
;; (define-key 'my-x-map (kbd "k c a") 'kmacro-add-counter)
;; (define-key 'my-x-map (kbd "k c f") 'kmacro-set-format)
;; (define-key 'my-x-map (kbd "k c i") 'kmacro-insert-counter)
;; (define-key 'my-x-map (kbd "k s") 'kmacro-start-macro)
;; (define-key 'my-x-map (kbd "k e") 'kmacro-end-or-call-macro-repeat)
;; (define-key 'my-x-map (kbd "k n") 'kmacro-cycle-ring-next)
;; (define-key 'my-x-map (kbd "k p") 'kmacro-cycle-ring-previous)
;; (define-key 'my-x-map (kbd "k b") 'kmacro-name-last-macro)
;; (define-key 'my-x-map (kbd "k l") 'insert-kbd-macro)
;; (define-key 'my-x-map (kbd "k i") 'kmacro-insert-counter)
;; (define-key 'my-x-map (kbd "k b") 'kmacro-bind-to-key)
;; (define-key 'my-x-map (kbd "k r") 'kmacro-to-register)
(define-key 'my-x-map (kbd "C-k C-r") 'kill-region)
(define-key 'my-x-map (kbd "C-k C-w") 'kill-word)
(define-key 'my-x-map (kbd "C-k C-r") 'kill-region)
(define-key 'my-x-map (kbd "C-k C-p") 'kill-paragraph)
(define-key 'my-x-map (kbd "C-k C-s") 'kill-sentence)
(define-key 'my-x-map (kbd "C-k C-l") 'kill-whole-line)
(define-key 'my-x-map (kbd "C-k C-#") 'kill-rectangle)

;; l
(define-key 'my-x-map (kbd "l") 'lsp)
(define-key lsp-command-map (kbd "C-r") 'lsp-rename)
(define-key lsp-command-map (kbd "C-o") 'lsp-organize-imports)
(define-key 'my-x-map (kbd "C-l") lsp-command-map)

;; m
;; ?

;; n

;; o
(define-key 'my-x-map (kbd "C-o") #'org-agenda)
(define-key 'my-x-map (kbd "o a") #'org-agenda)
(define-key 'my-x-map (kbd "o l") #'org-store-link)
(define-key 'my-x-map (kbd "o c") #'org-capture)

;; p
(define-key 'my-x-map (kbd "p") 'projectile-command-map)
(define-key 'my-x-map (kbd "C-p") nil)
(define-key 'my-x-map (kbd "C-p C-f") 'projectile-find-file)
(define-key 'my-x-map (kbd "C-p C-g") 'projectile-grep)
(define-key 'my-x-map (kbd "C-p C-b") 'projectile-switch-to-buffer)
(define-key 'my-x-map (kbd "C-p C-$") 'projectile-run-vterm)
(define-key 'my-x-map (kbd "C-p C-v") 'projectile-run-vterm)

;; q

;; r
(define-key 'my-x-map (kbd "C-r") 'crux-rename-file-and-buffer)

;; s
(define-key 'my-x-map (kbd "C-s") 'save-buffer)
(define-key 'my-x-map (kbd "s") 'save-some-buffers)

;; t
(define-key 'my-x-map (kbd "C-t") 'vterm)
(define-key 'my-x-map (kbd "t 0") 'tab-close)
(define-key 'my-x-map (kbd "t 1") 'tab-close-other)
(define-key 'my-x-map (kbd "t 2") 'tab-new)
(define-key 'my-x-map (kbd "t RET") 'tab-switch)
(define-key 'my-x-map (kbd "t o") 'tab-next)
(define-key 'my-x-map (kbd "t u") 'tab-undo)
(define-key 'my-x-map (kbd "t l") 'tab-last)
(define-key 'my-x-map (kbd "t r") 'tab-rename)
(define-key 'my-x-map (kbd "t r") 'tab-recent)
;; tab-bar-history-back
;; tab-bar-history-forward


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
(define-key 'my-x-map (kbd "w") 'hydra-window-management/body)
(define-key 'my-x-map (kbd "C-w") 'other-window)

;; x
(defhydra hydra-startup (global-map "C-x C-x")
  "What would like to do?"
	("t" org-todo-list "org-todo-list")
  ("j" my-open-my-japanese-file "japanese"))
(define-key 'my-x-map (kbd "x") 'hydra-startup/body)
(define-key 'my-x-map (kbd "C-x") 'hydra-startup/body)

;; y
(define-key 'my-x-map (kbd "C-y") 'yas-expand)
;; (define-key 'my-x-map (kbd "y") nil)
(define-key 'my-x-map (kbd "y n") 'yas-new-snippet)
(define-key 'my-x-map (kbd "y i") 'yas-insert-snippet)
(define-key 'my-x-map (kbd "y x") 'yas-expand)	

;; z
;; ?

(define-key 'my-x-map (kbd "8") 'insert-char)

(defhydra hydra-text-scale (global-map "C-x C-=")
  "text scale"
  ("i" text-scale-increase "increase")
  ("d" text-scale-decrease "decrease"))
(define-key 'my-x-map (kbd "=") 'hydra-text-scale/body)
(define-key 'my-x-map (kbd "C-=") 'hydra-text-scale/body)

(define-key 'my-x-map (kbd "C-$") 'vterm)

(global-set-key (kbd "C-x") 'my-x-map)
(global-set-key (kbd "C-S-x") 'my-x-map)

;; executables
;; (global-unset-key (kbd "C-x i"))
;; (global-set-key (kbd "C-x C-i") 'tprost-init-file)
;; (global-set-key (kbd "C-x i i") 'tprost-init-file)
;; (global-set-key (kbd "C-x i I") 'tprost-init-file-for-major-mode)
;; (global-set-key (kbd "C-x i f") 'tprost-find-emacsd-file)
;; (global-set-key (kbd "C-x i d") 'tprost-init-directory)
;; (global-set-key (kbd "C-x i t") 'tprost-init-todo-file)
;; (global-unset-key (kbd "C-x c"))
;; (global-set-key (kbd "C-x c") 'crux-cleanup-buffer-or-region)

;; (global-set-key (kbd "C-x L") 'tprost-project-layout)
;; (global-set-key (kbd "C-x S-E") 'eval-last-sexp)

;; (global-set-key (kbd "C-x c") 'crux-create-scratch-buffer)
;; (global-set-key (kbd "C-x !") 'crux-sudo-edit)

;; (global-set-key (kbd "C-x C-y s") 'tprost-open-snippets-directory-dwim)

;; file prefix
;; (global-unset-key (kbd "C-x C-f"))
;; (global-set-key (kbd "C-x f") 'helm-find-files)
;; (global-set-key (kbd "C-x C-f f") 'helm-find-files)
;; (global-set-key (kbd "C-x C-f r") 'crux-rename-file-and-buffer)
;; (global-set-key (kbd "C-x C-f k") 'crux-delete-file-and-buffer)

;; custom global shit prefix
;; (global-unset-key (kbd "C-x C-c"))
;; (global-set-key (kbd "C-x C-c e") 'tprost-find-emacsd-file)
;; (global-set-key (kbd "C-x C-c C-e e") 'tprost-find-emacsd-file)
;; (global-set-key (kbd "C-x C-c C-e i") 'tprost-init-file)
;; (global-set-key (kbd "C-x C-c C-e t") 'tprost-init-todo-file)

;; (global-set-key (kbd "C-x C-c C-p d") 'tprost-project-drill)
;; (global-set-key (kbd "C-x C-c C-p j") 'tprost-project-journal)
;; (global-set-key (kbd "C-x C-c C-p w") 'tprost-project-wiki)

;; (global-set-key (kbd "C-x C-c j") 'tprost-open-my-japanese-file)
;; (global-set-key (kbd "C-x C-c c") 'tprost-open-computer-science-drill-directory)
;; (global-set-key (kbd "C-x C-c d") 'org-drill)
;; (global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-japanese)
;; (global-set-key (kbd "C-x C-c C-d c") 'tprost-drill-computer-science)

;; (global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-)

;; (global-unset-key (kbd "C-x C-d"))
;; (global-set-key (kbd "C-x C-d j") 'tprost-open-my-japanese-file)
;; (global-set-key (kbd "C-x C-d c") 'tprost-open-computer-science-drill-directory)
;; (global-set-key (kbd "C-x C-d C-o d") 'tprost-drill) ;; TODO
;; (global-set-key (kbd "C-x C-d C-d") 'tprost-drill) ;; TODO

;; python
;; (define-key python-mode-map (kbd "C-c i") 'py-isort-buffer)
;; (define-key python-mode-map (kbd "C-M-i") 'my-python-mode-add-import)
;; (define-key python-mode-map (kbd "C-M-o") 'my-python-organize-imports)
;; (define-key python-mode-map (kbd "C-M-j") 'lsp-find-definition)

;; (global-set-key (kbd "C-x D") 'dired-in-downloads-directory)
;; (global-set-key (kbd "C-x M-w b b") 'my-copy-buffer-file-name-with-path)
;; (global-set-key (kbd "C-x M-w b w") 'my-copy-buffer-file-name-without-path)



(provide 'bindings-c-x)

