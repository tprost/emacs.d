
;; ;; keys on macosx
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(setq ns-function-modifier 'hyper)

(require 'expand-region)
(require 'which-key)
(which-key-mode)

(require 'whole-line-or-region)
(require 'hydra)

(whole-line-or-region-global-mode t)

(define-key input-decode-map [?\C-m] [C-m])

;; a
(evil-global-set-key 'normal (kbd "a") 'backward-paragraph)
                    
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
(global-set-key (kbd "M-a") 'beginning-of-line)
(global-set-key (kbd "C-M-a") 'beginning-of-line)

;; A
(evil-global-set-key 'normal  (kbd "A") 'beginning-of-buffer)
;; (global-set-key (kbd "C-S-a") 'my-beginning-of-code)
;; (global-set-key (kbd "M-S-a") 'my-beginning-of-text)
(global-set-key (kbd "C-M-S-a") 'beginning-of-buffer)

;; b
(evil-global-set-key 'normal  (kbd "b") 'backward-paragraph)
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "C-M-b") 'backward-sentence)

;; B
(evil-global-set-key 'normal  (kbd "B") 'backward-sexp)
(global-set-key (kbd "C-S-b") 'backward-symbol)
;; (global-set-key (kbd "M-S-b") 'backward-sexp)
(global-set-key (kbd "C-M-S-b") 'backward-sexp)

;; c
;; reserved for custom "major mode" commands
;; TODO monster c should map to C-c

;; C

;; d
(evil-global-set-key 'normal  (kbd "d") 'kill-paragraph)
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "C-M-d") 'kill-sentence)

;; D
(evil-global-set-key 'normal  (kbd "D") 'backward-kill-sexp)
;; (global-set-key (kbd "C-S-d") 'my-backward-kill-symbol)
;; (global-set-key (kbd "M-S-d") 'my-backward-kill-?)
(global-set-key (kbd "C-M-S-d") 'backward-kill-sexp)
;; (evil-global-set-key 'normal  (kbd "C-M-d") 'zap-to-char)
;; (evil-global-set-key 'normal  (kbd "C-M-S-d") 'zap-backwards-to-char)

;; e
(evil-global-set-key 'normal  (kbd "e") 'forward-paragraph)
;; (global-set-key (kbd "C-e") 'crux-end-of-line)
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "M-e") 'end-of-line)
;; (global-set-key (kbd "C-M-e") 'my-second-to-last-end-of-paragraph)

;; E
(evil-global-set-key 'normal  (kbd "E") 'end-of-buffer)
;; (global-set-key (kbd "C-S-e") 'my-end-of-code)
;; (global-set-key (kbd "M-S-e") 'my-end-of-text)
;; (global-set-key (kbd "C-M-S-e") 'end-of-buffer)

;; f
(evil-global-set-key 'normal  (kbd "f") 'forward-sentence)
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "M-f") 'forward-word)
;; (global-set-key (kbd "C-M-f") 'forward-phrase)
(global-set-key (kbd "C-M-f") 'forward-sentence)

;; F
(evil-global-set-key 'normal  (kbd "F") 'forward-sexp)
(global-set-key (kbd "C-S-f") 'forward-symbol)
(global-set-key (kbd "M-S-f") 'forward-sexp)
(global-set-key (kbd "C-M-S-f") 'end-of-defun)

;; g
(evil-global-set-key 'normal  (kbd "g") 'keyboard-quit)

;; G
;; what could go here?
;; maybe resetting windows or something?

;; h
(evil-global-set-key 'normal  (kbd "h") 'help-map)

;; H
(evil-global-set-key 'normal  (kbd "H") 'describe-key)

;; i
(evil-global-set-key 'normal  (kbd "i") 'evil-insert-state)

;; I
;; what could go here?
;; maybe open up my bindings files?

;; j
(define-prefix-command 'my-avy-map)
(evil-global-set-key 'normal  (kbd "j") 'avy-goto-char)
(global-set-key (kbd "C-j") 'my-avy-map)
(global-set-key (kbd "C-j c") 'avy-goto-char)
(global-set-key (kbd "C-j 2") 'avy-goto-char-2)
(global-set-key (kbd "C-j j") 'avy-goto-char)
(global-set-key (kbd "C-j a") 'avy-goto-char-2-above)
(global-set-key (kbd "C-j e") 'avy-goto-char-2-below)
(global-set-key (kbd "C-j b") 'avy-goto-char-2-above)
(global-set-key (kbd "C-j f") 'avy-goto-char-2-below)
(global-set-key (kbd "C-j l") 'avy-goto-char-in-line)
(global-set-key (kbd "C-j w") 'avy-goto-word-1)
(global-set-key (kbd "C-j C-w 0") 'avy-goto-word-0)
(global-set-key (kbd "C-j C-w 1") 'avy-goto-word-1)

(define-prefix-command 'my-micro-avy-map)
(global-set-key (kbd "M-j") 'my-micro-avy-map)
(global-set-key (kbd "M-j c") 'avy-goto-char)
(global-set-key (kbd "M-j l") 'avy-goto-line)
(global-set-key (kbd "M-j a") 'avy-goto-line-above)
(global-set-key (kbd "M-j e") 'avy-goto-line-below)
(global-set-key (kbd "M-j b") 'avy-goto-word-0-above)
(global-set-key (kbd "M-j f") 'avy-goto-word-0-below)
(global-set-key (kbd "M-j w") 'avy-goto-word-0)

(define-prefix-command 'my-macro-avy-map)
(global-set-key (kbd "C-M-j") 'my-macro-avy-map)
(global-set-key (kbd "C-M-j l") 'avy-goto-line)
(global-set-key (kbd "C-M-j a") 'avy-goto-line-above)
(global-set-key (kbd "C-M-j e") 'avy-goto-line-below)

;; J

;; k
(evil-global-set-key 'normal  (kbd "k") 'my-major-kill-dwim)
(global-set-key (kbd "C-k") 'crux-kill-and-join-forward)
(global-set-key (kbd "M-k") 'crux-smart-kill-line)

;; K
(evil-global-set-key 'normal  (kbd "K") 'crux-kill-line-backwards)
(global-set-key (kbd "C-S-k") 'crux-kill-line-backwards)
;; (global-set-key (kbd "M-S-k") 'kill-word)
;; (global-set-key (kbd "C-M-S-k") 'kill-sentence)

;; l
(evil-global-set-key 'normal  (kbd "l") 'recenter-top-bottom)
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "M-l") 'recenter)
(global-set-key (kbd "C-M-l") 'recenter)

;; L
(evil-global-set-key 'normal  (kbd "L") 'recenter)
(global-set-key (kbd "C-S-l") 'scroll-bottom-line-to-top)
(global-set-key (kbd "M-S-l") 'scroll-top-line-to-bottom)

;; m
(define-prefix-command 'my-mark-map)
(evil-global-set-key 'normal  (kbd "m") 'er/expand-region)
(evil-global-set-key 'normal  (kbd "<C-m>") 'my-mark-map)
(evil-global-set-key 'normal  (kbd "<C-m> l") 'my-mark-current-line)
(evil-global-set-key 'normal  (kbd "<C-m> f") 'er/mark-defun)
(evil-global-set-key 'normal  (kbd "<C-m> w") 'er/mark-word)
(evil-global-set-key 'normal  (kbd "<C-m> p") 'er/mark-paragraph)
(evil-global-set-key 'normal  (kbd "<C-m> c") 'er/mark-comment)
(evil-global-set-key 'normal  (kbd "<C-m> e") 'er/mark-email)
(evil-global-set-key 'normal  (kbd "<C-m> s") 'er/mark-symbol)
(evil-global-set-key 'normal  (kbd "<C-m> n") 'er/mark-sentence)
(evil-global-set-key 'normal  (kbd "<C-m> b") 'mark-whole-buffer)

(evil-global-set-key 'normal  (kbd "<C-m> f") (define-prefix-command 'my-mark-feature-map))
(evil-global-set-key 'normal  (kbd "<C-m> f s") 'er/mark-feature-scenario)
(evil-global-set-key 'normal  (kbd "<C-m> f p") 'er/mark-feature-step)

;; M
(evil-global-set-key 'normal  (kbd "M") 'mc/mark-all-dwim)
(define-prefix-command 'my-mc-map)
(global-set-key (kbd "C-S-m") 'my-mc-map)
(global-set-key (kbd "C-S-m a") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-m r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-S-m l") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-S-m m") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-m p") 'mc/mark-previous-like-this)

;; n
(evil-global-set-key 'normal (kbd "n") 'forward-paragraph)
;; (global-set-key (kbd "C-n") 'next-line)
;; (global-set-key (kbd "M-n") '

;; N

;; o
;; code folding
(global-unset-key (kbd "C-o"))

;; O
(evil-global-set-key 'normal  (kbd "O") 'er/expand-region)
(evil-global-set-key 'normal  (kbd "M-S-o") 'er/contract-region)
(global-set-key (kbd "C-S-o") 'er/expand-region)
(global-set-key (kbd "C-M-S-o") 'er/contract-region)


;; p
(evil-global-set-key 'normal  (kbd "p") 'backward-paragraph)

;; P
(evil-global-set-key 'normal (kbd "P") 'projectile-command-map)

;; q
(evil-global-set-key 'normal (kbd "q") 'kill-current-buffer)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "x") 'projectile-test-project)
(define-key projectile-command-map (kbd "t") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "T") 'projectile-run-vterm-dwim)
;; (define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "g") 'projectile-grep)
;; (define-key projectile-command-map (kbd "o") 'projectile-toggle-between-implementation-and-test)
;; (define-key projectile-mode-map (kbd "C-x C-p x") 'projectile-test-project)
;; (define-key projectile-mode-map (kbd "C-x C-p t") 'projectile-run-term)
;; (define-key projectile-mode-map (kbd "C-x C-p t n") 'term-projectile-create-new)
;; (define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
;; (define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
;; (define-key projectile-mode-map (kbd "C-x p t s") 'term-projectile-switch-to)


;; Q

;; r
(evil-global-set-key 'normal  (kbd "r") 'isearch-backward)

;; R

;; s
(evil-global-set-key 'normal  (kbd "s") 'isearch-forward)
;; (global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; S

;; t
;; t is for typing!

(define-prefix-command 'my-editing-map)
(evil-global-set-key 'normal  (kbd "t") 'my-editing-map)
(global-set-key (kbd "C-t") 'my-editing-map)

(defhydra hydra-move-text (global-map "C-t N")
  "text scale"
  ("n" move-text-down "down")
  ("p" move-text-up "up"))

(define-key my-editing-map (kbd "c") 'crux-capitalize-region)
(define-key my-editing-map (kbd "d") 'downcase-dwim)
(define-key my-editing-map (kbd "u") 'upcase-dwim)
(define-key my-editing-map (kbd "?") 'crux-ispell-word-then-abbrev) ;; TODO fix ispell
(define-key my-editing-map (kbd "o") 'my-open-line-below)
(define-key my-editing-map (kbd "p") 'hydra-move-text/move-text-up)
(define-key my-editing-map (kbd "n") 'hydra-move-text/move-text-down)
(define-key my-editing-map (kbd "^") 'crux-top-join-line)
(define-key my-editing-map (kbd "C-o") 'my-open-line-below-and-move)
(define-key my-editing-map (kbd "O") 'my-open-line-above)
(define-key my-editing-map (kbd "C-S-o") 'my-open-line-above-and-move)
(define-key my-editing-map (kbd "s") 'sort-lines)
(define-key my-editing-map (kbd "&") 'crux-duplicate-current-line-or-region)
;; (define-key my-editing-map (kbd "&") 'crux-duplicate-and-comment-current-line-or-region)

;; T
;; https://emacsredux.com/blog/2016/01/31/use-tab-to-indent-or-complete/
(define-prefix-command 'my-indenting-map)
(evil-global-set-key 'normal  (kbd "T") 'my-indent-dwim)
(global-set-key (kbd "C-S-t") 'my-indenting-map)
(define-key my-indenting-map (kbd "f") 'crux-indent-defun)
(define-key my-indenting-map (kbd "t") 'my-indent-dwim)
(define-key my-indenting-map (kbd ";") 'indent-for-comment)
(define-key my-indenting-map (kbd "r") 'indent-rigidly)
(define-key my-indenting-map (kbd "x") 'indent-sexp)
(define-key my-indenting-map (kbd "p") 'indent-pp-sexp)
(define-key my-indenting-map (kbd "2") 'indent-to)
;; TODO explore more indenting commands

;; u

;; U

;; v
;; (evil-global-set-key 'normal  (kbd "v") 'scroll-up)
(evil-global-set-key 'normal (kbd "C-v") 'scroll-up)
(evil-global-set-key 'normal (kbd "M-v") 'scroll-down)

(evil-global-set-key 'insert  (kbd "C-v") 'my-scroll-8-lines-up)
(evil-global-set-key 'insert  (kbd "M-v") 'my-scroll-8-lines-down)

;; (global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
;; (global-set-key (kbd "M-v") 'scroll-up) ;; a lot somehow?
;; (global-set-key (kbd "C-M-v") 'scroll-line-up)
;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; V
;; (evil-global-set-key 'normal  (kbd "V") 'scroll-down)
;; (global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "M-S-v") 'scroll-page-down)
;; (global-set-key (kbd "C-M-S-v") 'scroll-line-down)

;; ;; w
(evil-global-set-key 'normal  (kbd "w") 'whole-line-or-region-kill-ring-save)

;; x
(define-prefix-command 'my-x-map)
(evil-global-set-key 'normal  (kbd "x") 'my-x-map)
(global-set-key (kbd "C-x") 'my-x-map)

(define-key 'my-x-map (kbd "b") 'helm-mini)
(define-key 'my-x-map (kbd "C-b b") 'beginning-of-buffer)
(define-key 'my-x-map (kbd "C-b c") 'cleanup-buffer)
(define-key 'my-x-map (kbd "C-b d") 'crux-delete-file-and-buffer)
(define-key 'my-x-map (kbd "C-b e") 'end-of-buffer)
(define-key 'my-x-map (kbd "C-b k") 'kill-current-buffer)
(define-key 'my-x-map (kbd "C-b m") 'mark-whole-buffer)
(define-key 'my-x-map (kbd "C-b n") 'next-buffer)
(define-key 'my-x-map (kbd "C-b p") 'previous-buffer)
(define-key 'my-x-map (kbd "C-b r") 'rename-buffer)
(define-key 'my-x-map (kbd "C-b v") 'revert-buffer)
(define-key 'my-x-map (kbd "C-b w") 'erase-buffer)

(define-key 'my-x-map (kbd "c") 'crux-cleanup-buffer-or-region)
(define-key 'my-x-map (kbd "d") 'dired)
(define-key 'my-x-map (kbd "D") 'crux-recentf-find-directory)

(define-key 'my-x-map (kbd "f") 'helm-find-files)
(define-key 'my-x-map (kbd "C-f") 'helm-find-files)
(define-key 'my-x-map (kbd "F") 'crux-recentf-find-file)

(define-key 'my-x-map (kbd "g") 'magit)
(define-key 'my-x-map (kbd "h") 'mark-whole-buffer)

(define-key 'my-x-map (kbd "k") 'kmacro-start-macro)
(define-key 'my-x-map (kbd "K") 'helm-execute-kmacro)

(define-key 'my-x-map (kbd "C-k h") 'helm-execute-kmacro)
(define-key 'my-x-map (kbd "C-k x") 'kmacro-call-macro)
(define-key 'my-x-map (kbd "C-k c") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "C-k C-c s") 'kmacro-set-counter)
(define-key 'my-x-map (kbd "C-k C-c a") 'kmacro-add-counter)
(define-key 'my-x-map (kbd "C-k C-c f") 'kmacro-set-format)
(define-key 'my-x-map (kbd "C-k C-c i") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "C-k s") 'kmacro-start-macro)
(define-key 'my-x-map (kbd "C-k e") 'kmacro-end-or-call-macro-repeat)
(define-key 'my-x-map (kbd "C-k n") 'kmacro-cycle-ring-next)
(define-key 'my-x-map (kbd "C-k p") 'kmacro-cycle-ring-previous)
(define-key 'my-x-map (kbd "C-k b") 'kmacro-name-last-macro)
(define-key 'my-x-map (kbd "C-k l") 'insert-kbd-macro)
(define-key 'my-x-map (kbd "C-k i") 'kmacro-insert-counter)
(define-key 'my-x-map (kbd "C-k b") 'kmacro-bind-to-key)
(define-key 'my-x-map (kbd "C-k r") 'kmacro-to-register)
;; kmacro-start-macro-or-insert-counter

(define-key 'my-x-map (kbd "l") 'lsp)
(define-key lsp-command-map (kbd "r") 'lsp-rename)
(define-key lsp-command-map (kbd "o") 'lsp-organize-imports)
(define-key 'my-x-map (kbd "C-l") lsp-command-map)


;; ;; ;; (global-set-key (kbd "C-M-c") 'crux-cleanup-buffer-or-region)

;; (global-set-key (kbd "C-x l") 'lsp)
;; (setq lsp-keymap-prefix "C-x C-l")
;; (define-key lsp-mode-map (kbd "C-x C-l") lsp-command-map)

;; (define-key 'my-x-map (kbd "o") 'crux-other-window-or-switch-buffer)
(define-key 'my-x-map (kbd "o") #'org-agenda)
(define-key 'my-x-map (kbd "C-o a") #'org-agenda)
(define-key 'my-x-map (kbd "C-o l") #'org-store-link)
(define-key 'my-x-map (kbd "C-o c") #'org-capture)



(define-key 'my-x-map (kbd "p") 'projectile-switch-project)
(define-key 'my-x-map (kbd "C-p") 'projectile-command-map)


(define-key 'my-x-map (kbd "s") 'save-buffer)
(define-key 'my-x-map (kbd "C-s") 'save-buffer)

(define-key 'my-x-map (kbd "t") 'my-new-vterm)
;; (define-key 'my-x-map (kbd "T") 'projectile-run-vterm-dwim)

(define-key 'my-x-map (kbd "x") 'eval-defun)

(define-key 'my-x-map (kbd "y") 'yasnippet)

(defhydra hydra-text-scale (global-map "C-x t")
  "text scale"
  ("i" text-scale-increase "increase")
  ("d" text-scale-decrease "decrease"))

(defhydra hydra-window-management (global-map "C-x w")
  "window"
  ("<left>" windmove-left)
  ("<right>" windmove-right)
  ("<down>" windmove-down)
  ("<up>" windmove-up)
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
(global-set-key (kbd "C-x C-w") 'hydra-window-management/body)

(defhydra hydra-frame-management (global-map "C-x F")
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
  ("n" make-frame "make-frame")  
  ("o" other-frame "other-frame")
  ("q" nil)
  ("s" shrink-frame-horizontally "shrink-frame-horizontally")
  ("w" hydra-window-management/body "window"))

;; X
(evil-global-set-key 'normal  (kbd "X") 'my-eval-dwim) ;; eval dwim
(define-prefix-command 'my-eval-map)
(global-set-key (kbd "C-S-x") 'my-eval-map)
(define-key my-eval-map (kbd "x") 'my-eval-dwim) ;; eval dwim
(define-key my-eval-map (kbd "f") 'eval-defun)
(define-key my-eval-map (kbd "x") 'eval-last-sexp)
(define-key my-eval-map (kbd "y") 'crux-eval-and-replace)
(define-key my-eval-map (kbd "b") 'eval-buffer)
(define-key my-eval-map (kbd "r") 'eval-region)
(define-key my-eval-map (kbd "p") 'eval-print-last-sexp)
(global-set-key (kbd "M-S-x") 'my-eval-dwim)
(global-set-key (kbd "C-M-S-x") 'my-eval-dwim)
(global-set-key (kbd "C-<return>") 'my-eval-dwim)

;; y
(evil-global-set-key 'normal  (kbd "y") 'yank)

;; Y
(evil-global-set-key 'normal  (kbd "Y") 'yasnippet)
(global-set-key (kbd "C-S-y") 'yasnippet)

;; z
(global-set-key (kbd "C-z") 'evil-normal-state)

;; Z


(evil-global-set-key 'normal  (kbd "/") 'undo)

;; (evil-global-set-key 'normal  (kbd "!") 'eval-defun)



;; (evil-global-set-key 'normal  (kbd "[") 'my-open-line-above)
;; ;; (evil-global-set-key 'normal  (kbd "{") 'my-open-line-above)

;; ;; (evil-global-set-key 'normal  (kbd "}") 'crux-smart-open-line)

;; (evil-global-set-key 'normal  (kbd "]") 'crux-smart-open-line)

;; 
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.

;; (global-set-key (kbd "C-[") 'my-open-line-above)
;; (global-set-key (kbd "C-]") 'my-open-line-below)


(evil-global-set-key 'normal  (kbd "SPC") 'set-mark-command)
(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)

(evil-global-set-key 'normal  (kbd "%") 'query-replace)

(evil-global-set-key 'normal  (kbd "<backspace>") 'backward-delete-char)
;; (evil-global-set-key 'normal  (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'normal  (kbd "M-<backspace>") 'crux-kill-line-backwards)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sentence)

;; ;; (evil-global-set-key 'normal  (kbd "(") 'kmacro-start-macro-or-insert-counter)
;; ;; (evil-global-set-key 'normal  (kbd ")") 'kmacro-end-macro)
;; ;; ;;(evil-global-set-key 'normal  (kbd "#") 'evil-record-macro)

(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)

;; ;; ;; (Require 'multiple-cursors)

;; ;; ;; ;; evil shell command
;; ;; ;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)
;; ;; ;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)

;; ;; ;; (setq evil-respect-visual-line-mode nil)

;; ;; ;; ;; (global-set-key (kbd "m") '(self-insert-command (char "m")))
;; ;; ;; ;; (evil-global-set-key 'normal (kbd "") 'evil-scroll-line-down)




;; ;; ;;   ;; (evil-global-set-key state (kbd "C-n") 'next-

;; ;; ;;   ;; TODO copy and paste line below

;; ;; ;;   (evil-global-set-key state (kbd "p") 'evil-previous-line)
 
    




;; ;; ;; (setq evil-move-beyond-eol 't)

;; ;; ;; ;; (setq evil-default-state 'emacs)
;; ;; ;; ;; https://evil.readthedocs.io/en/latest/overview.html

;; ;; ;; ;; TODO evil-forward-word-start?
;; ;; ;; (dolist (state (list 'normal 'visual))

;; ;; ;;   (evil-global-set-key state (kbd "f") 'forward-char)
;; ;; ;;   (evil-global-set-key state (kbd "C-f") 'forward-word)
;; ;; ;;   (evil-global-set-key state (kbd "M-f") 'forward-paragraph)
;; ;; ;;   (evil-global-set-key state (kbd "C-M-f") 'end-of-buffer)
;; ;; ;;   (evil-global-set-key state (kbd "S-f") 'forward-symbol)
;; ;; ;;   (evil-global-set-key state (kbd "F") 'forward-symbol)
;; ;; ;;   (evil-global-set-key state (kbd "C-S-f") 'forward-sexp)
;; ;; ;;   (evil-global-set-key state (kbd "M-S-f") 'forward-sexp)
;; ;; ;;   (evil-global-set-key state (kbd "C-M-S-f") 'forward-sexp)
  
;; ;; ;;   (evil-global-set-key state (kbd "b") 'backward-char)
;; ;; ;;   (evil-global-set-key state (kbd "C-b") 'backward-word)
;; ;; ;;   (evil-global-set-key state (kbd "M-b") 'backward-paragraph)
;; ;; ;;   (evil-global-set-key state (kbd "C-M-b") 'end-of-buffer)
;; ;; ;;   (evil-global-set-key state (kbd "S-b") 'backward-symbol)
;; ;; ;;   (evil-global-set-key state (kbd "B") 'backward-symbol)
;; ;; ;;   (evil-global-set-key state (kbd "C-S-b") 'backward-sexp)
;; ;; ;;   (evil-global-set-key state (kbd "M-S-b") 'backward-sexp)
;; ;; ;;   (evil-global-set-key state (kbd "C-M-S-b") 'backward-sexp)
;; ;; ;;   (evil-global-set-key state (kbd "n") 'evil-next-line)
;; ;; ;;   ;; (evil-global-set-key state (kbd "C-n") 'next-

;; ;; ;;   ;; TODO copy and paste line below

;; ;; ;;   (evil-global-set-key state (kbd "p") 'evil-previous-line)

;; ;; ;;   (evil-global-set-key state (kbd "e") 'move-end-of-line)
;; ;; ;;   (evil-global-set-key state (kbd "a") 'crux-move-beginning-of-line))


;; ;; ;; (evil-global-set-key 'normal (kbd "i") 'evil-emacs-state)
;; ;; ;; (evil-global-set-key 'emacs (kbd "C-g") 'evil-normal-state)

;; ;; ;; (evil-global-set-key 'normal (kbd "k") 'crux-smart-kill-line)
;; ;; ;; (evil-global-set-key 'normal (kbd "y") 'yank)
;; ;; ;; (evil-global-set-key 'normal (kbd "w") 'kill-ring-save)

;; ;; ;; ;; evil-search-forward?
;; ;; ;; (evil-global-set-key 'normal (kbd "s") 'isearch-forward)
;; ;; ;; (evil-global-set-key 'normal (kbd "r") 'isearch-backward)

;; ;; ;; (evil-global-set-key 'normal (kbd "d") 'delete-char)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-d") 'kill-word)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-d") 'kill-sexp)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-M-d") 'zap-to-char)

;; ;; ;; (evil-global-set-key 'normal (kbd "<backspace>") 'backward-delete-char-untabify)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-<backspace>") 'backward-kill-word)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-<backspace>") 'backward-kill-sexp)

;; ;; ;; (evil-global-set-key 'normal (kbd "j") 'avy-goto-char)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-j") 'avy-goto-word-0)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-S-j") 'avy-goto-word-1)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-j") 'avy-goto-line)

;; ;; ;; (evil-global-set-key 'normal (kbd "(") 'kmacro-start-macro-or-insert-counter)
;; ;; ;; (evil-global-set-key 'normal (kbd ")") 'kmacro-end-macro)
;; ;; ;; (evil-global-set-key 'normal (kbd "#") 'evil-record-macro)

;; ;; ;; (evil-global-set-key 'normal (kbd "SPC") 'set-mark-command)

;; ;; ;; (evil-global-set-key 'normal (kbd "v") 'my-scroll-8-lines-down)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-v") 'evil-scroll-down)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-v") 'evil-scroll-page-down)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-down)

;; ;; ;; (define-prefix-command 'my-mark-map)
;; ;; ;; (evil-global-set-key 'normal (kbd "m") 'my-mark-map)
;; ;; ;; (evil-global-set-key 'normal (kbd "m l") 'my-mark-current-line)
;; ;; ;; (evil-global-set-key 'normal (kbd "m f") 'er/mark-defun)
;; ;; ;; (evil-global-set-key 'normal (kbd "m w") 'er/mark-word)
;; ;; ;; (evil-global-set-key 'normal (kbd "m p") 'er/mark-paragraph)
;; ;; ;; (evil-global-set-key 'normal (kbd "m c") 'er/mark-comment)
;; ;; ;; (evil-global-set-key 'normal (kbd "m e") 'er/mark-email)
;; ;; ;; (evil-global-set-key 'normal (kbd "m s") 'er/mark-symbol)
;; ;; ;; (evil-global-set-key 'normal (kbd "m n") 'er/mark-sentence)
;; ;; ;; (evil-global-set-key 'normal (kbd "m b") 'mark-whole-buffer)

;; ;; ;; (evil-global-set-key 'normal (kbd "m f") (define-prefix-command 'my-mark-feature-map))
;; ;; ;; (evil-global-set-key 'normal (kbd "m f s") 'er/mark-feature-scenario)
;; ;; ;; (evil-global-set-key 'normal (kbd "m f p") 'er/mark-feature-step)


;; ;; ;; (require 'multiple-cursors)

;; ;; ;; ;; evil shell command
;; ;; ;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)
;; ;; ;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)

;; ;; ;; (setq evil-respect-visual-line-mode nil)

;; ;; ;; ;; (global-set-key (kbd "m") '(self-insert-command (char "m")))
;; ;; ;; ;; (evil-global-set-key 'normal (kbd "") 'evil-scroll-line-down)


;; ;; ;; ;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; ;; ;; (defun my-scroll-8-lines-down ()
;; ;; ;;   (interactive)
;; ;; ;;   (evil-scroll-line-down 8))

;; ;; ;; (defun my-scroll-8-lines-up ()
;; ;; ;;   (interactive)
;; ;; ;;   (evil-scroll-line-up 8))

;; ;; ;; (evil-global-set-key 'normal (kbd "S-v") 'my-scroll-8-lines-up)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-S-v") 'evil-scroll-up)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-S-v") 'evil-scroll-page-up)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-M-S-v") 'evil-scroll-line-up)

;; ;; ;; (evil-global-set-key 'normal (kbd "l") 'recenter-top-bottom)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-l") 'evil-scroll-line-to-top)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-l") 'evil-scroll-line-to-bottom)

;; ;; ;; (evil-global-set-key 'normal (kbd "S-l") 'recenter)
;; ;; ;; (evil-global-set-key 'normal (kbd "C-S-l") 'evil-scroll-bottom-line-to-top)
;; ;; ;; (evil-global-set-key 'normal (kbd "M-S-l") 'evil-scroll-top-line-to-bottom)



;; ;; ;; evil-repeat





;; ;; ;; ** Executing


;; ;; ;; | C-x !       | go to important file prefix   |
;; ;; ;; | C-x 1       | search for ~/.emacs.d file    |
;; ;; ;; | C-x <tab>   | ?                             |
;; ;; ;; | C-x SPC     | ?                             |
;; ;; ;; | C-x d       | dired mode                    |
;; ;; ;; | C-x e       | run last macro                |
;; ;; ;; | C-x t       | dwim-open-terminal            |
;; ;; ;; | C-x w       | whitespace mode               |

;; ;; ;; | key binding | command type                  |
;; ;; ;; |-------------+-------------------------------|
;; ;; ;; | C-x d       | dired mode                    |
;; ;; ;; | C-x e       | run last macro                |
;; ;; ;; | C-x t       | dwim-open-terminal            |
;; ;; ;; | C-x C-l     | lsp prefix                    |
;; ;; ;; | C-x C-p     | projectile prefix             |
;; ;; ;; | C-x C-p C-t | term-projectile prefix        |
;; ;; ;; | C-x C-w     | window management prefix TODO |
;; ;; ;; | C-x w       | whitespace mode               |
;; ;; ;; | C-x SPC     | ?                             |
;; ;; ;; | C-x <tab>   | ?                             |
;; ;; ;; | C-x !       | go to important file prefix   |
;; ;; ;; | C-x 1       | search for ~/.emacs.d file    |
;; ;; ;; | C-x C-t     | taylor prefix                 |
;; ;; ;; |             |                               |

;; ;; ;; ** Project
;; ;; ;; | key binding | command type |
;; ;; ;; |-------------+--------------|
;; ;; ;; | C-x p r     | restclient   |

;; ;; ;; (global-unset-all-super-key)

;; ;; ;; (global-unset-key (kbd "ESC"))
;; ;; ;; (global-set-key (kbd "ESC") 'keyboard-quit)

;; ;; ;; (global-set-key (kbd "<C-m>") 'set-mark-command)
;; ;; ;; (global-set-key (kbd "C-.") 'kmacro-end-or-call-macro)
;; ;; ;; (global-set-key (kbd "C-_") 'keyboard-quit)



;; ;; ;; ;; killing things
;; ;; ;; (global-set-key (kbd "C-k") 'crux-smart-kill-line)
;; ;; ;; (global-set-key (kbd "C-S-K") 'crux-kill-whole-line)
;; ;; ;; (global-set-key (kbd "M-k") 'tprost-kill-to-end-of-buffer)
;; ;; ;; (global-set-key (kbd "M-S-k") 'tprost-kill-to-end-of-buffer)

;; ;; ;; (global-set-key (kbd "C-S-<backspace>") 'crux-kill-line-backwards)
;; ;; ;; (global-set-key (kbd "M-S-<backspace>") 'tprost-kill-to-beginning-of-buffer)

;; ;; ;; ;; kill buffer backwards
;; ;; ;; (global-set-key (kbd "M-S-<backspace>") 'crux-kill-line-backwards)
;; ;; ;; ;; crux-kill-and-join-forward
;; ;; ;; ;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; ;; ;; ;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; ;; ;; ;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; ;; ;; ;; kill from point to end of buffer



;; ;; ;; (global-set-key (kbd "M-k") 'crux-smart-kill-line)

;; ;; ;; (global-set-key (kbd "C-o") 'crux-smart-open-line)
;; ;; ;; (global-set-key (kbd "C-S-o") 'crux-smart-open-line-above)

;; ;; ;; (global-set-key (kbd "C-a") 'crux-move-beginning-of-line)

;; ;; ;; (global-unset-key (kbd "C-c n"))
;; ;; ;; (global-set-key (kbd "C-c n") 'crux-cleanup-buffer-or-region)
;; ;; ;; (global-set-key (kbd "C-c f") 'crux-recentf-find-file)
;; ;; ;; (global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)
;; ;; ;; (global-set-key (kbd "C-c M-d") 'crux-duplicate-and-comment-current-line-or-region)
;; ;; ;; (global-set-key (kbd "C-c e") 'crux-eval-and-replace)

;; ;; ;; (global-set-key (kbd "C-c e") 'crux-eval-and-replace)
;; ;; ;; (global-set-key (kbd "C-c r") 'crux-rename-file-and-buffer)

;; ;; ;; (global-set-key (kbd "C-c TAB") 'crux-indent-rigidly-and-copy-to-clipboard)

;; ;; ;; ;; (global-set-key (kbd "C-M z") 'crux-indent-defun)

;; ;; ;; ;; (global-set-key (kbd "C-c i") 'crux-find-user-init-file)

;; ;; ;; (global-set-key (kbd "C-^") 'crux-top-join-line)
;; ;; ;; (global-set-key (kbd "C-c u") 'crux-upcase-region)
;; ;; ;; (global-set-key (kbd "C-c l") 'crux-downcase-region)
;; ;; ;; (global-set-key (kbd "C-c c") 'crux-capitalize-region)
;; ;; ;; (global-set-key (kbd "C-c i") 'crux-ispell-word-then-abbrev)



;; ;; ;; (global-unset-key (kbd "C-M-;"))

;; ;; ;; (global-set-key (kbd "C-M-; ;") 'comment-dwim)
;; ;; ;; (global-set-key (kbd "C-M-; C-M-;") 'comment-dwim)

;; ;; ;; (global-set-key (kbd "C-M-; l") 'comment-line)
;; ;; ;; (global-set-key (kbd "C-M-; C-M-l") 'comment-line)

;; ;; ;; C-+             text-scale-increase
;; ;; ;; C-,             toggle-kbd-macro-recording-on
;; ;; ;; C--             text-scale-decrease



;; ;; ;; ESC <C-backspace>               backward-kill-sexp
;; ;; ;; ESC <C-delete>                  backward-kill-sexp
;; ;; ;; ESC <C-down>                    down-list
;; ;; ;; ESC <C-end>                     end-of-defun
;; ;; ;; ESC <C-home>                    beginning-of-defun
;; ;; ;; ESC <C-left>                    backward-sexp
;; ;; ;; ESC <C-right>                   forward-sexp
;; ;; ;; ESC <C-up>      backward-up-list
;; ;; ;; ESC <begin>     beginning-of-buffer-other-window
;; ;; ;; ESC <end>       end-of-buffer-other-window
;; ;; ;; ESC <f10>       toggle-frame-maximized
;; ;; ;; ESC <home>      beginning-of-buffer-other-window
;; ;; ;; ESC <left>      backward-word
;; ;; ;; ESC <next>      scroll-other-window
;; ;; ;; ESC <prior>     scroll-other-window-down
;; ;; ;; ESC <right>     forward-word


;; ;; ;; (global-unset-key (kbd "C-z"))
;; ;; ;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; ;; ;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; ;; ;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; ;; ;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; ;; ;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; ;; ;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; ;; ;; (global-set-key (kbd "<f1> c") 'calendar)
;; ;; ;; (global-set-key (kbd "<f1> g") 'magit-status)
;; ;; ;; (global-set-key (kbd "<f1> o c") 'org-capture)
;; ;; ;; (global-set-key (kbd "<f1> v") 'visual-line-mode)
;; ;; ;; (global-set-key (kbd "<f1> w") 'whitespace-mode)
;; ;; ;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

;; ;; ;; (global-set-key (kbd "M-/") 'hippie-expand)
;; ;; ;; (global-set-key (kbd "TAB") 'smart-tab)

;; ;; ;; (global-set-key (kbd "M-i") 'back-to-indentation)
;; ;; ;; (global-set-key (kbd "C-C-S-m") 'iy-go-to-char)

;; ;; ;; (global-set-key (kbd "<C-m>") 'set-mark-command)
;; ;; ;; (global-set-key (kbd "C-=") 'set-mark-command)

;; ;; ;; (global-set-key (kbd "C-z") 'er/expand-region)
;; ;; ;; (global-set-key (kbd "<C-return>") 'open-line-below)
;; ;; ;; (global-set-key (kbd "<C-S-return>") 'open-line-above)
;; ;; ;; (global-set-key (kbd "M-`") 'other-frame)

;; ;; (global-set-key (kbd "C-+") 'text-scale-increase)
;; ;; (global-set-key (kbd "C--") 'text-scale-decrease)
;; ;; ;; (global-set-key (kbd "C-o") 'prelude-smart-open-line-above)
;; ;; ;; (global-set-key (kbd "M-o") 'prelude-smart-open-line)

;; ;; ;; (global-set-key (kbd "C-x <") 'previous-buffer)
;; ;; ;; (global-set-key (kbd "C-x >") 'next-buffer)
;; ;; ;; (global-set-key (kbd "C-x r") 'rename-buffer)

;; ;; ;; (global-set-key (kbd "C-,") 'toggle-kbd-macro-recording-on)
;; ;; ;; (global-set-key (kbd "C-.") 'kmacro-end-and-call-macro)

;; ;; ;; (global-set-key (kbd "M-j")
;; ;; ;;                 (lambda ()
;; ;; ;;                   (interactive)
;; ;; ;;                   (join-line -1)))

;; ;; ;; (global-set-key (kbd "M-n") 'move-text-down)
;; ;; ;; (global-set-key (kbd "M-p") 'move-text-up)

;; ;; ;; (global-unset-key (kbd "M-i"))

;; ;; ;; (global-set-key (kbd "M-i c") (lambda () (interactive) (set-input-method "chinese-py")))
;; ;; ;; (global-set-key (kbd "M-i e") (lambda () (interactive) (set-input-method "ucs")))

;; ;; ;; (global-set-key (kbd "s-`") 'other-frame)

;; ;; ;; (global-set-key (kbd "C-<next>") 'end-of-buffer)
;; ;; ;; (global-set-key (kbd "C-<prior>") 'beginning-of-buffer)

;; ;; ;; (global-set-key (kbd "M-A") 'beginning-of-buffer)
;; ;; ;; (global-set-key (kbd "M-E") 'end-of-buffer)

;; ;; ;; (global-set-key (kbd "C-=") 'er/expand-region)
;; ;; ;; (global-set-key (kbd "C-t") 'set-mark-command)

;; ;; ;; (global-unset-key (kbd "<f1>"))
;; ;; ;; (global-unset-key (kbd "<f4>"))
;; ;; ;; (global-unset-key (kbd "<f5>"))
;; ;; ;; (global-set-key (kbd "<f1>") 'cleanup-buffer)
;; ;; ;; (global-set-key (kbd "<f2>") 'projectile-commander)
;; ;; ;; (global-set-key (kbd "<f3>") 'projectile-test-project)
;; ;; ;; (global-set-key (kbd "<f4>") 'helm-make-projectile)
;; ;; ;; (global-set-key (kbd "<f5>") 'crux-find-user-init-file)
;; ;; ;; (global-set-key (kbd "<f8>") 'crux-find-user-init-file)

;; ;; ;; (global-set-key (kbd "C-<down>") 'shrink-window-horizontally)
;; ;; ;; (global-set-key (kbd "C-<up>") 'enlarge-window-horizontally)



;; ;; ;; executables
;; ;; ;; (global-unset-key (kbd "C-x i"))
;; ;; ;; (global-set-key (kbd "C-x C-i") 'tprost-init-file)
;; ;; ;; (global-set-key (kbd "C-x i i") 'tprost-init-file)
;; ;; ;; (global-set-key (kbd "C-x i I") 'tprost-init-file-for-major-mode)
;; ;; ;; (global-set-key (kbd "C-x i f") 'tprost-find-emacsd-file)
;; ;; ;; (global-set-key (kbd "C-x i d") 'tprost-init-directory)
;; ;; ;; (global-set-key (kbd "C-x i t") 'tprost-init-todo-file)
;; ;; ;; (global-unset-key (kbd "C-x c"))
;; ;; ;; (global-set-key (kbd "C-x c") 'crux-cleanup-buffer-or-region)
;; ;; ;; (global-set-key (kbd "C-x d") 'dired)
;; ;; ;; ;; (global-set-key (kbd "C-x e") 'kmacro-end-and-call-macro)
;; ;; ;; (global-set-key (kbd "C-x f") 'helm-find-files)
;; ;; ;; (global-set-key (kbd "C-x g") 'magit-status)
;; ;; ;; (global-set-key (kbd "C-x h") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x i") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x j") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x k") 'kill-buffer)
;; ;; ;; (global-set-key (kbd "C-x l") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x m") 'helm-make-projectile) ;; TODO
;; ;; ;; (global-set-key (kbd "C-x n") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x o") 'other-window) ;; TODO
;; ;; ;; (global-set-key (kbd "C-x o") 'other-window) ;; TODO
;; ;; ;; (global-set-key (kbd "C-x p") 'helm-projectile-switch-project)
;; ;; ;; ;; (global-set-key (kbd "C-x q") ') ;; TODO
;; ;; ;; ;; (global-set-key (kbd "C-x r") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x s") 'save-buffer)
;; ;; ;; (global-set-key (kbd "C-x t") 'crux-visit-term-buffer)
;; ;; ;; ;; (global-set-key (kbd "C-x u") ') ;; TODO
;; ;; ;; ;; (global-set-key (kbd "C-x v") ') ;; TODO
;; ;; ;; (global-set-key (kbd "C-x w") 'whitespace-mode)
;; ;; ;; (global-set-key (kbd "C-x y") 'company-yasnippet)
;; ;; ;; ;; (global-set-key (kbd "C-x z") ') ;; TODO

;; ;; ;; (global-set-key (kbd "C-x L") 'tprost-project-layout)
;; ;; ;; (global-set-key (kbd "C-x S-E") 'eval-last-sexp)


;; ;; ;; (global-set-key (kbd "C-x c") 'crux-create-scratch-buffer)
;; ;; ;; (global-set-key (kbd "C-x !") 'crux-sudo-edit)


;; ;; ;; yasnippet prefix
;; ;; ;; (global-unset-key (kbd "C-x y"))
;; ;; ;; (global-unset-key (kbd "C-x C-y"))
;; ;; ;; (global-set-key (kbd "C-x C-y y") 'company-yasnippet)
;; ;; ;; (global-set-key (kbd "C-x C-y r") 'yas-reload-all)
;; ;; ;; (global-set-key (kbd "C-x C-y s") 'tprost-open-snippets-directory-dwim)

;; ;; ;; (global-unset-key (kbd "C-x C-o"))
;; ;; ;; (global-set-key (kbd "C-x C-o a") 'org-agenda)
;; ;; ;; (global-set-key (kbd "C-x C-o t") 'org-todo-list)
;; ;; ;; (global-set-key (kbd "C-x C-o c") 'org-capture)
;; ;; ;; (global-set-key (kbd "C-x C-o d") 'org-drill)


;; ;; ;; ;; (global-set-key (kbd "C-x i") 'my-org-drill)
;; ;; ;; ;; (global-set-key (kbd "C-x C-i r") 'my-org-drill-resume)
;; ;; ;; ;; (global-set-key (kbd "C-x r") 'my-org-drill)

;; ;; ;; (global-set-key (kbd "C-x i") 'my-org-drill)
;; ;; ;; ;; (global-set-key (kbd "C-x C-i r") 'my-org-drill-resume)
;; ;; ;; (global-set-key (kbd "C-x r") 'my-org-drill)

;; ;; ;; ;; file prefix
;; ;; ;; (global-unset-key (kbd "C-x C-f"))
;; ;; ;; (global-set-key (kbd "C-x f") 'helm-find-files)
;; ;; ;; (global-set-key (kbd "C-x C-f f") 'helm-find-files)
;; ;; ;; (global-set-key (kbd "C-x C-f r") 'crux-rename-file-and-buffer)
;; ;; ;; (global-set-key (kbd "C-x C-f k") 'crux-delete-file-and-buffer)

;; ;; ;; ;; custom global shit prefix
;; ;; ;; (global-unset-key (kbd "C-x C-c"))
;; ;; ;; (global-set-key (kbd "C-x C-c e") 'tprost-find-emacsd-file)
;; ;; ;; (global-set-key (kbd "C-x C-c C-e e") 'tprost-find-emacsd-file)
;; ;; ;; (global-set-key (kbd "C-x C-c C-e i") 'tprost-init-file)
;; ;; ;; (global-set-key (kbd "C-x C-c C-e t") 'tprost-init-todo-file)

;; ;; ;; (global-set-key (kbd "C-x C-c C-p d") 'tprost-project-drill)
;; ;; ;; (global-set-key (kbd "C-x C-c C-p j") 'tprost-project-journal)
;; ;; ;; (global-set-key (kbd "C-x C-c C-p w") 'tprost-project-wiki)

;; ;; ;; (global-set-key (kbd "C-x C-c j") 'tprost-open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "C-x C-c c") 'tprost-open-computer-science-drill-directory)
;; ;; ;; (global-set-key (kbd "C-x C-c d") 'org-drill)
;; ;; ;; (global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-japanese)
;; ;; ;; (global-set-key (kbd "C-x C-c C-d c") 'tprost-drill-computer-science)

;; ;; ;; ;; (global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-)

;; ;; ;; (global-unset-key (kbd "C-x C-d"))
;; ;; ;; (global-set-key (kbd "C-x C-d j") 'tprost-open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "C-x C-d c") 'tprost-open-computer-science-drill-directory)
;; ;; ;; (global-set-key (kbd "C-x C-d C-o d") 'tprost-drill) ;; TODO
;; ;; ;; (global-set-key (kbd "C-x C-d C-d") 'tprost-drill) ;; TODO


;; ;; ;; ;; window prefix
;; ;; ;; (global-unset-key (kbd "C-x C-w"))
;; ;; ;; (global-set-key (kbd "C-x C-w o") 'other-window)
;; ;; ;; (global-set-key (kbd "C-x C-w 1") 'delete-other-windows)
;; ;; ;; (global-set-key (kbd "C-x C-w 0") 'delete-window)

;; ;; ;; (global-set-key (kbd "C-x o") 'org-agenda)
;; ;; ;; (global-set-key (kbd "C-x 1") 'cleanup-buffer)

;; ;; ;; (global-unset-key (kbd "C-x l"))

;; ;; ;; (global-set-key (kbd "C-<tab>") 'company-yasnippet)

;; ;; ;; ;; PROJECTILE
;; ;; ;; ;; (setq projectile-keymap-prefix nil)
;; ;; ;; ;; (global-unset-key (kbd "C-x p"))
;; ;; ;; ;; (global-unset-key (kbd "C-x C-p"))
;; ;; ;; (define-key projectile-mode-map (kbd "C-x C-p") 'projectile-command-map)


;; ;; ;; ;; (global-set-key (kbd "C-x C-p t") 'projectile-test-project)
;; ;; ;; ;; (global-set-key (kbd "C-x C-p t") 'projectile-toggle-between-implementation-and-test)

;; ;; ;; ;; python
;; ;; ;; (define-key python-mode-map (kbd "C-c i") 'py-isort-buffer)
;; ;; ;; (define-key python-mode-map (kbd "C-M-i") 'my-python-mode-add-import)
;; ;; ;; (define-key python-mode-map (kbd "C-M-o") 'my-python-organize-imports)
;; ;; ;; (define-key python-mode-map (kbd "C-M-j") 'lsp-find-definition)

;; ;; ;; (global-set-key (kbd "C-M-/") 'next-error)


;; ;; ;; (global-set-key (kbd "C-x D") 'dired-in-downloads-directory)

;; ;; ;; (global-set-key (kbd "C-x M-w b b") 'my-copy-buffer-file-name-with-path)
;; ;; ;; (global-set-key (kbd "C-x M-w b w") 'my-copy-buffer-file-name-without-path)

;; ;; ;; (global-set-key (kbd "C-;") 'avy-goto-char)
;; ;; ;; (global-set-key (kbd "C-:") 'avy-goto-line)

(global-set-key (kbd "C-x C-o l") #'org-store-link)
(global-set-key (kbd "C-x C-o a") #'org-agenda)
(global-set-key (kbd "C-x C-o c") #'org-capture)

(define-prefix-command 'my-org-mode-prefix-map)
(define-key my-org-mode-prefix-map (kbd "o a") 'outline-show-all)
(define-key my-org-mode-prefix-map (kbd "o b") 'org-tree-to-indirect-buffer)
(define-key my-org-mode-prefix-map (kbd "o c") 'outline-show-children)
(define-key my-org-mode-prefix-map (kbd "o g") 'org-global-cycle)
(define-key my-org-mode-prefix-map (kbd "o k") 'outline-show-branches)
(define-key my-org-mode-prefix-map (kbd "o o") 'org-cycle)
(define-key my-org-mode-prefix-map (kbd "o r") 'org-reveal)
(define-key my-org-mode-prefix-map (kbd "o s") 'org-set-startup-visibility)
(define-key my-org-mode-prefix-map (kbd "o w") 'org-copy-visible)

(define-key my-org-mode-prefix-map (kbd "i") 'org-meta-return)
(define-key my-org-mode-prefix-map (kbd "C-i") 'org-insert-heading-respect-content)
;; (define-key my-org-mode-prefix-map (kbd "t") 'org-insert-todo-heading)
;; (define-key my-org-mode-prefix-map (kbd "C-t") 'org-insert-todo-heading-respect-content)

(define-key my-org-mode-prefix-map (kbd "t") 'org-todo)

(define-key my-org-mode-prefix-map (kbd "p") #'org-do-promote)
(define-key my-org-mode-prefix-map (kbd "M-p") #'org-do-demote)
(define-key my-org-mode-prefix-map (kbd "d") #'org-do-demote)

(define-key my-org-mode-prefix-map (kbd "P") #'org-promote-subtree)
(define-key my-org-mode-prefix-map (kbd "D") #'org-demote-subtree)

(define-key my-org-mode-prefix-map (kbd "u") #'org-move-subtree-up)
(define-key my-org-mode-prefix-map (kbd "d") #'org-move-subtree-down)

(define-key my-org-mode-prefix-map (kbd "m") #'org-mark-subtree)
(define-key my-org-mode-prefix-map (kbd "k") #'org-cut-subtree)

(define-key my-org-mode-prefix-map (kbd "&") #'org-clone-subtree-with-time-shift)
(define-key my-org-mode-prefix-map (kbd "r") #'org-refile)

(define-key my-org-mode-prefix-map (kbd "^") #'org-sort)
(define-key my-org-mode-prefix-map (kbd "C-^") #'my-org-sort-and-organize-todo-file)

(define-key my-org-mode-prefix-map (kbd "n s") #'org-narrow-to-subtree)
(define-key my-org-mode-prefix-map (kbd "n b") #'org-narrow-to-block)
(define-key my-org-mode-prefix-map (kbd "n w") #'widen)
(define-key my-org-mode-prefix-map (kbd "*") #'org-toggle-heading)

(define-key my-org-mode-prefix-map (kbd "/") #'org-sparse-tree)

;; org-occur
;; next-error
;; previous-error

;; TODO lists https://orgmode.org/manual/Plain-Lists.html

(define-key my-org-mode-prefix-map (kbd ";") #'org-insert-drawer)
(define-key my-org-mode-prefix-map (kbd "M-;") #'org-insert-property-drawer)

;; TODO tables

;; TODO hyperlinks

;; (define-key org-mode-map (kbd "<C-m> o") #'org-mark-subtree)

(define-key org-mode-map (kbd "C-o") #'org-cycle)
(define-key org-mode-map (kbd "C-y") #'org-yank)
(define-key org-mode-map (kbd "M-o") #'outline-show-all)
(define-key org-mode-map (kbd "C-c") my-org-mode-prefix-map)
(define-key org-mode-map (kbd "C-x c") #'my-org-sort-and-organize-todo-file)

(evil-define-key 'normal org-mode-map (kbd "F") 'org-forward-heading-same-level)
(evil-define-key 'normal org-mode-map (kbd "B") 'org-backward-heading-same-level)
(evil-define-key 'normal org-mode-map (kbd "N") 'org-next-visible-heading)
(evil-define-key 'normal org-mode-map (kbd "P") 'org-previous-visible-heading)
(evil-define-key 'normal org-mode-map (kbd "U") 'outline-up-heading)
(evil-define-key 'normal org-mode-map (kbd "J") 'org-goto)
(evil-define-key 'normal org-mode-map (kbd "K") 'org-cut-subtree)
(evil-define-key 'normal org-mode-map (kbd "W") 'org-copy-subtree)
(evil-define-key 'normal org-mode-map (kbd "Y") 'org-paste-subtree)
;; avy-org-goto-heading-timer
(evil-define-key 'normal org-mode-map (kbd "o") 'org-cycle)



;; (evil-define-key 'normal org-mode-map (kbd "J") ')




(evil-define-key 'normal org-mode-map (kbd "c") my-org-mode-prefix-map)
(evil-define-key 'normal org-mode-map (kbd "C-c") my-org-mode-prefix-map)


(evil-define-key 'normal 'haskell-stack-mode (kbd "<f1>") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'normal 'haskell-stack-mode (kbd "1") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'normal 'haskell-stack-mode (kbd "P x") 'my-projectile-run-stack-testing-vterm)

(global-set-key (kbd "C-x |") 'my-toggle-window-split)



(provide 'bindings)
