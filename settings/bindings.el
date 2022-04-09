
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
(evil-global-set-key 'emacs (kbd "a") 'backward-paragraph)
                    
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
(global-set-key (kbd "M-a") 'beginning-of-line)
(global-set-key (kbd "C-M-a") 'beginning-of-line)

;; A
(evil-global-set-key 'emacs  (kbd "A") 'beginning-of-buffer)
;; (global-set-key (kbdi "C-S-a") 'my-beginning-of-code)
;; (global-set-key (kbd "M-S-a") 'my-beginning-of-text)
(global-set-key (kbd "C-M-S-a") 'beginning-of-buffer)

;; b
(evil-global-set-key 'emacs  (kbd "b") 'backward-paragraph)
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "C-M-b") 'backward-sentence)

;;
; B
(evil-global-set-key 'emacs  (kbd "B") 'backward-sexp)
(global-set-key (kbd "C-S-b") 'backward-symbol)
;; (global-set-key (kbd "M-S-b") 'backward-sexp)
(global-set-key (kbd "C-M-S-b") 'backward-sexp)

;; c
;; reserved for custom "major mode" commands
;; TODO monster c should map to C-c

;; C

;; d
(evil-global-set-key 'emacs  (kbd "d") 'kill-paragraph)
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "C-M-d") 'kill-sentence)

;; D
(evil-global-set-key 'emacs  (kbd "D") 'backward-kill-sexp)
;; (global-set-key (kbd "C-S-d") 'my-backward-kill-symbol)
;; (global-set-key (kbd "M-S-d") 'my-backward-kill-?)
(global-set-key (kbd "C-M-S-d") 'backward-kill-sexp)
;; (evil-global-set-key 'emacs  (kbd "C-M-d") 'zap-to-char)
;; (evil-global-set-key 'emacs  (kbd "C-M-S-d") 'zap-backwards-to-char)

;; e
(evil-global-set-key 'emacs  (kbd "e") 'forward-paragraph)
;; (global-set-key (kbd "C-e") 'crux-end-of-line)
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "M-e") 'end-of-line)
;; (global-set-key (kbd "C-M-e") 'my-second-to-last-end-of-paragraph)

;; E
(evil-global-set-key 'emacs  (kbd "E") 'end-of-buffer)
;; (global-set-key (kbd "C-S-e") 'my-end-of-code)
;; (global-set-key (kbd "M-S-e") 'my-end-of-text)
;; (global-set-key (kbd "C-M-S-e") 'end-of-buffer)

;; f
(evil-global-set-key 'emacs  (kbd "f") 'forward-sentence)
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "M-f") 'forward-word)
;; (global-set-key (kbd "C-M-f") 'forward-phrase)
(global-set-key (kbd "C-M-f") 'forward-sentence)

;; F
(evil-global-set-key 'emacs  (kbd "F") 'forward-sexp)
(global-set-key (kbd "C-S-f") 'forward-symbol)
(global-set-key (kbd "M-S-f") 'forward-sexp)
(global-set-key (kbd "C-M-S-f") 'end-of-defun)

;; g
(evil-global-set-key 'emacs  (kbd "g") 'keyboard-quit)

;; G
;; what could go here?
;; maybe resetting windows or something?

;; h
(evil-global-set-key 'emacs  (kbd "h") 'help-map)

;; H
(evil-global-set-key 'emacs  (kbd "H") 'describe-key)

;; i
(evil-global-set-key 'emacs (kbd "i") 'evil-insert-state)
(evil-global-set-key 'emacs (kbd "<insertchar>") 'evil-insert-state)
(evil-global-set-key 'insert (kbd "<insertchar>") 'evil-emacs-state)
(evil-global-set-key 'emacs (kbd "<insert>") 'evil-insert-state)
(evil-global-set-key 'insert (kbd "<insert>") 'evil-emacs-state)


;; I
;; what could go here?
;; maybe open up my bindings files?

;; j
(define-prefix-command 'my-avy-map)
(evil-global-set-key 'emacs  (kbd "j") 'avy-goto-char)
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
(evil-global-set-key 'emacs  (kbd "k") 'my-major-kill-dwim)
(global-set-key (kbd "C-k") 'crux-kill-and-join-forward)
(global-set-key (kbd "M-k") 'crux-smart-kill-line)

;; K
(evil-global-set-key 'emacs  (kbd "K") 'crux-kill-line-backwards)
(global-set-key (kbd "C-S-k") 'crux-kill-line-backwards)
;; (global-set-key (kbd "M-S-k") 'kill-word)
;; (global-set-key (kbd "C-M-S-k") 'kill-sentence)

;; l
(evil-global-set-key 'emacs  (kbd "l") 'recenter-top-bottom)
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "M-l") 'recenter)
(global-set-key (kbd "C-M-l") 'recenter)

;; L
(evil-global-set-key 'emacs (kbd "L") 'lsp-keymap-prefix)

;; m
(evil-global-set-key 'emacs (kbd "m") 'set-mark-command)
(define-prefix-command 'my-mark-map)
(global-set-key (kbd "<C-m>") 'set-mark-command)
(define-key my-mark-map (kbd "w") 'er/mark-word)
(define-key my-mark-map (kbd "s") 'er/mark-sentence)
(define-key my-mark-map (kbd "p") 'er/mark-paragraph)
(define-key my-mark-map (kbd "l") 'my-mark-current-line)
(define-key my-mark-map (kbd "c") 'er/mark-comment)
(define-key my-mark-map (kbd "f") 'er/mark-defun)
(define-key my-mark-map (kbd "e") 'er/mark-email)
(define-key my-mark-map (kbd "m") 'er/mark-symbol)
(define-key my-mark-map (kbd "b") 'mark-whole-buffer)
;; (define-key my-mark-map (kbd "f") (define-prefix-command 'my-mark-feature-map))
;; (define-key my-mark-map (kbd "f s") 'er/mark-feature-scenario)
;; (define-key my-mark-map (kbd "f p") 'er/mark-feature-step)

;; M
(evil-global-set-key 'emacs  (kbd "M") 'mc/mark-all-dwim)
(define-prefix-command 'my-mc-map)
(global-set-key (kbd "C-S-m") 'my-mc-map)
(global-set-key (kbd "C-S-m a") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-m r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-S-m l") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-S-m m") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-m p") 'mc/mark-previous-like-this)

;; n
(evil-global-set-key 'emacs (kbd "n") 'forward-paragraph)
;; (global-set-key (kbd "C-n") 'next-line)
;; (global-set-key (kbd "M-n") '

;; N

;; o
;; code folding
(evil-global-set-key 'emacs (kbd "o") 'hs-toggle-hiding)
(evil-global-set-key 'emacs (kbd "C-o") 'hs-hide-block)
(evil-global-set-key 'emacs (kbd "M-o") 'hs-show-block)
(define-prefix-command 'my-hs-map)
(define-key my-hs-map (kbd "s") 'hs-show-all)
(define-key my-hs-map (kbd "h") 'hs-hide-all)
(define-key my-hs-map (kbd "l") 'hs-hide-level)
(evil-global-set-key 'emacs (kbd "C-M-o") 'my-hs-map)

(evil-global-set-key 'insert (kbd "C-o") 'my-open-line-below)
(evil-global-set-key 'insert (kbd "M-o") 'my-open-line-above)
;; TODO
(evil-global-set-key 'insert (kbd "C-M-o") 'my-trim-lines-above-and-below)

;; O
(evil-global-set-key 'emacs  (kbd "O") 'er/expand-region)
(evil-global-set-key 'emacs  (kbd "M-S-o") 'er/contract-region)
(global-set-key (kbd "C-S-o") 'er/expand-region)
(global-set-key (kbd "C-M-S-o") 'er/contract-region)


;; p
(evil-global-set-key 'emacs  (kbd "p") 'backward-paragraph)

;; P
(evil-global-set-key 'emacs (kbd "P") 'projectile-command-map)
(global-set-key (kbd "<menu>") 'projectile-command-map)
(global-set-key (kbd "<f1>") 'projectile-command-map)
                
                
;; q
(evil-global-set-key 'emacs (kbd "q") 'kill-current-buffer)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "x") 'projectile-test-project)

(define-key projectile-command-map (kbd "1") 'projectile-find-test-file)
(define-key projectile-command-map (kbd "1") 'projectile-toggle-between-implementation-and-test)

(define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "V") 'projectile-run-vterm-dwim)
(define-key projectile-command-map (kbd "t") 'my-jump-to-project-todo-file)
;; (define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "g") 'projectile-grep)

;; (define-key projectile-mode-map (kbd "C-x C-p x") 'projectile-test-project)
;; (define-key projectile-mode-map (kbd "C-x C-p t") 'projectile-run-term)
;; (define-key projectile-mode-map (kbd "C-x C-p t n") 'term-projectile-create-new)
;; (define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
;; (define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
;; (define-key projectile-mode-map (kbd "C-x p t s") 'term-projectile-switch-to)


;; Q

;; r
(evil-global-set-key 'emacs  (kbd "r") 'isearch-backward)

;; R

;; s
(evil-global-set-key 'emacs  (kbd "s") 'isearch-forward)
;; (global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; S

;; t
;; t is for typing!

(define-prefix-command 'my-editing-map)
(evil-global-set-key 'emacs  (kbd "t") 'my-editing-map)
(global-set-key (kbd "C-t") 'my-editing-map)

(defhydra hydra-move-text (global-map "C-t N")
  "text scale"
  ("n" move-text-down "down")
  ("p" move-text-up "up"))

(define-key my-editing-map (kbd "c") 'crux-capitalize-region)
(define-key my-editing-map (kbd "d") 'downcase-dwim)
(define-key my-editing-map (kbd "u") 'upcase-dwim)
 ;; TODO fix ispell and bind to something else
(define-key my-editing-map (kbd "?") 'crux-ispell-word-then-abbrev)
(define-key my-editing-map (kbd "o") 'my-open-line-below)
(define-key my-editing-map (kbd "p") 'hydra-move-text/move-text-up)
(define-key my-editing-map (kbd "n") 'hydra-move-text/move-text-down)
(define-key my-editing-map (kbd "^") 'crux-top-join-line)
(define-key my-editing-map (kbd "C-o") 'my-open-line-below-and-move)
(define-key my-editing-map (kbd "O") 'my-open-line-above)
(define-key my-editing-map (kbd "C-S-o") 'my-open-line-above-and-move)
(define-key my-editing-map (kbd "s") 'sort-lines)
(define-key my-editing-map (kbd "&") 'crux-duplicate-current-line-or-region)
(define-key my-editing-map (kbd "l") 'delete-blank-lines)
(define-key my-editing-map (kbd "w") 'fixup-whitespace)
;; (define-key my-editing-map (kbd "&") 'crux-duplicate-and-comment-current-line-or-region)
;; fixup-whitespace

;; T
;; https://emacsredux.com/blog/2016/01/31/use-tab-to-indent-or-complete/
(define-prefix-command 'my-indenting-map)
(evil-global-set-key 'emacs  (kbd "T") 'my-indent-dwim)
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
(evil-global-set-key 'emacs (kbd "v") 'recenter)
(evil-global-set-key 'emacs (kbd "C-v") 'scroll-up)
(evil-global-set-key 'emacs (kbd "M-v") 'scroll-down)
(evil-global-set-key 'insert  (kbd "C-v") 'my-scroll-8-lines-up)
(evil-global-set-key 'insert  (kbd "M-v") 'my-scroll-8-lines-down)
(global-set-key (kbd "C-M-v") 'recenter)
;; (global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
;; (global-set-key (kbd "M-v") 'scroll-up) ;; a lot somehow?
;; (global-set-key (kbd "C-M-v") 'scroll-line-up)
;; (evil-global-set-key 'emacs (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; V
;; (evil-global-set-key 'emacs  (kbd "V") 'scroll-down)
;; (global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "M-S-v") 'scroll-page-down)
;; (global-set-key (kbd "C-M-S-v") 'scroll-line-down)

;; ;; w
(evil-global-set-key 'emacs  (kbd "w") 'whole-line-or-region-kill-ring-save)

;; x
(define-prefix-command 'my-x-map)
(evil-global-set-key 'emacs  (kbd "x") 'my-x-map)
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

(define-key 'my-x-map (kbd "e") 'my-emacs-init-file)
(define-key 'my-x-map (kbd "C-e t") 'my-emacs-todo-file)
(define-key 'my-x-map (kbd "C-e b") 'my-emacs-bindings-file)
(define-key 'my-x-map (kbd "C-e f") 'my-emacs-projectile-find-file)

(define-key 'my-x-map (kbd "f") 'helm-find-files)
(define-key 'my-x-map (kbd "C-f") 'helm-find-files)
(define-key 'my-x-map (kbd "F") 'crux-recentf-find-file)

(define-key 'my-x-map (kbd "g") 'magit)

(define-key 'my-x-map (kbd "h") 'info-emacs-manual)

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


(define-key 'my-x-map (kbd "p") 'projectile-switch-project)

(define-prefix-command 'my-rectangle-map)
(define-key 'my-x-map (kbd "C-r") 'my-rectangle-map)
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

(global-set-key (kbd "M-ESC") 'other-frame)

(define-prefix-command 'my-emacs-d-map)
(define-key my-emacs-d-map (kbd "t") #'my-emacs-todo-file)
(define-key my-x-map (kbd "e") my-emacs-d-map)
;; (evil-global-set-key 'emacs  (kbd "m") 'er/expand-region)
;; (evil-global-set-key 'emacs  (kbd "<C-m>") 'my-mark-map)
;; (evil-global-set-key 'emacs  (kbd "<C-m> l") 'my-mark-current-line)
;; (evil-global-set-key 'emacs  (kbd "<C-m> f") 'er/mark-defun)
;; (evil-global-set-key 'emacs  (kbd "<C-m> w") 'er/mark-word)-


;; X
(evil-global-set-key 'emacs  (kbd "X") 'my-eval-dwim) ;; eval dwim
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
(evil-global-set-key 'emacs  (kbd "y") 'yank)

;; Y
(evil-global-set-key 'emacs  (kbd "Y") 'yasnippet)
(global-set-key (kbd "C-S-y") 'yasnippet)

;; z
(global-set-key (kbd "C-z") 'evil-emacs-state)

;; Z


(evil-global-set-key 'emacs  (kbd "/") 'undo)
(global-set-key (kbd "C-.") 'set-mark-command)
(evil-global-set-key 'emacs (kbd ">") 'next-buffer)
(evil-global-set-key 'emacs (kbd "<") 'previous-buffer)

;; (evil-global-set-key 'emacs  (kbd "!") 'eval-defun)



;; (evil-global-set-key 'emacs  (kbd "[") 'my-open-line-above)
;; ;; (evil-global-set-key 'emacs  (kbd "{") 'my-open-line-above)

;; ;; (evil-global-set-key 'emacs  (kbd "}") 'crux-smart-open-line)

;; (evil-global-set-key 'emacs  (kbd "]") 'crux-smart-open-line)

;; 
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.

;; (global-set-key (kbd "C-[") 'my-open-line-above)
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; <SPC>
(evil-global-set-key 'emacs  (kbd "SPC") 'set-mark-command)
(global-set-key (kbd "M-SPC") 'my-toggle-evil-mode)
(global-set-key (kbd "C-SPC") 'set-mark-command)


(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<find>") 'search-forward)
(global-set-key (kbd "<undo>") 'undo)
;; (global-set-key (kbd "C-z") 'undo)

(evil-global-set-key 'emacs  (kbd "%") 'query-replace)

(evil-global-set-key 'emacs  (kbd "<backspace>") 'backward-delete-char)
;; (evil-global-set-key 'emacs  (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'emacs  (kbd "M-<backspace>") 'crux-kill-line-backwards)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sentence)

;; ;; (evil-global-set-key 'emacs  (kbd "(") 'kmacro-start-macro-or-insert-counter)
;; ;; (evil-global-set-key 'emacs  (kbd ")") 'kmacro-end-macro)
;; ;; ;;(evil-global-set-key 'emacs  (kbd "#") 'evil-record-macro)

(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)


;; ORG MODE BINDINGS
(global-set-key (kbd "C-x C-o l") #'org-store-link)
(global-set-key (kbd "C-x C-o a") #'org-agenda)
(global-set-key (kbd "C-x C-o c") #'org-capture)

(define-prefix-command 'my-org-mode-prefix-map)
(define-key org-mode-map (kbd "C-c") my-org-mode-prefix-map)
(evil-define-key 'emacs org-mode-map (kbd "c") my-org-mode-prefix-map)
(evil-define-key 'emacs org-mode-map (kbd "C-c") my-org-mode-prefix-map)

(evil-define-key 'emacs org-mode-map (kbd "#") 'org-priority)

(define-key my-org-mode-prefix-map (kbd "a") 'outline-show-all)
(define-key my-org-mode-prefix-map (kbd "b") 'org-tree-to-indirect-buffer)
(define-key my-org-mode-prefix-map (kbd "c") 'outline-show-children)
(define-key my-org-mode-prefix-map (kbd "g") 'org-global-cycle)
(define-key my-org-mode-prefix-map (kbd "k") 'outline-show-branches)
(define-key my-org-mode-prefix-map (kbd "o") 'org-cycle)
(define-key my-org-mode-prefix-map (kbd "r") 'org-reveal)
(define-key my-org-mode-prefix-map (kbd "s") 'org-set-startup-visibility)
(define-key my-org-mode-prefix-map (kbd "w") 'org-copy-visible)

;; (define-key my-org-mode-prefix-map (kbd "d") 'org-priority-down)



(define-key my-org-mode-prefix-map (kbd "# u") 'org-priority-up)
(define-key my-org-mode-prefix-map (kbd "# d") 'org-priority-down)



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
(define-key org-mode-map (kbd "C-x c") #'my-org-sort-and-organize-todo-file)

(evil-define-key 'emacs org-mode-map (kbd "F") 'org-forward-heading-same-level)
(evil-define-key 'emacs org-mode-map (kbd "B") 'org-backward-heading-same-level)
(evil-define-key 'emacs org-mode-map (kbd "N") 'org-next-visible-heading)
(evil-define-key 'emacs org-mode-map (kbd "P") 'org-previous-visible-heading)
(evil-define-key 'emacs org-mode-map (kbd "U") 'outline-up-heading)
(evil-define-key 'emacs org-mode-map (kbd "J") 'org-goto)
(evil-define-key 'emacs org-mode-map (kbd "K") 'org-cut-subtree)
(evil-define-key 'emacs org-mode-map (kbd "W") 'org-copy-subtree)
(evil-define-key 'emacs org-mode-map (kbd "Y") 'org-paste-subtree)
;; avy-org-goto-heading-timer
(evil-define-key 'emacs org-mode-map (kbd "o") 'org-cycle)

;; (evil-define-key 'emacs org-mode-map (kbd "J") ')

(global-unset-key (kbd "<f1>"))

(evil-define-key nil 'haskell-stack-mode (kbd "<f2>") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'insert 'haskell-stack-mode (kbd "<f2>") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'emacs 'haskell-stack-mode (kbd "<f2>") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'emacs 'haskell-stack-mode (kbd "1") 'my-projectile-run-stack-testing-vterm)
(evil-define-key 'emacs 'haskell-stack-mode (kbd "P x") 'my-projectile-run-stack-testing-vterm)

;; (defun my-little-message ()
;;   (interactive)
;;   (popup-menu (lookup-key (current-local-map) (kbd "C-c"q)))

;; (defun my-one-time-haskell-mode-c ()
;;   (interactive)  
;;   (which-key-show-full-keymap (lookup-key (current-local-map) (kbd "C-c"))))

;; (haskell-mode-map)
;; (evil-define-key 'emacs 'haskell-stack-mode (kbd "C") '(lookup-key (current-local-map) (kbd "C-c")))
;; (evil-define-key 'emacs 'haskell-stack-mode (kbd "C") 'my-one-time-haskell-mode-c)
;; (evil-define-key 'emacs 'haskell-stack-mode (kbd "C") 'helm-M-x)

(evil-define-key nil haskell-mode-map (kbd "C-c r") 'projectile-replace)
;; (evil-define-key nil haskell-mode-map (kbd "C-c i") 'haskell-interactive-switch)

(evil-define-key nil haskell-mode-map (kbd "C-c ,") 'haskell-mode-format-imports)
(evil-define-key nil haskell-mode-map (kbd "C-c C-,") nil)
(evil-define-key nil haskell-mode-map (kbd "C-c C-, n") 'haskell-navigate-imports)
(evil-define-key nil haskell-mode-map (kbd "C-c C-, s") 'haskell-sort-imports)
(evil-define-key nil haskell-mode-map (kbd "C-c C-, a") 'haskell-align-imports)

(evil-define-key 'emacs haskell-mode-map (kbd "o") 'haskell-hide-toggle)
(evil-define-key 'emacs haskell-mode-map (kbd "C-o") 'haskell-hide-toggle)
(evil-define-key 'emacs haskell-mode-map (kbd "M-o") 'haskell-hide-toggle)
;; TODO maybe this should be a prefix map for consistency?
(evil-define-key 'emacs haskell-mode-map (kbd "C-M-o") nil)
(evil-define-key 'emacs haskell-mode-map (kbd "C-M-o o") 'haskell-hide-toggle-all)
(evil-define-key 'emacs haskell-mode-map (kbd "C-M-o s") 'my-haskell-hs-show-all)
(evil-define-key 'emacs haskell-mode-map (kbd "C-M-o h") 'my-haskell-hs-hide-all)

;; haskell lookup hoogle?


;; haskell-navigate-imports

;; haskell-process-load-file
;; haskell-process-reload

;; (evil-define-key nil haskell-mode-map (kbd "C-c R") 'projectile-replace)

;; (evil-define-key 'emacs 'haskell-mode (kbd "D") 'helm-M-x)

;;   ---             -------

;; C-c !           Prefix Command

;; C-c ! C-c       flycheck-compile
;; C-c ! C-w       flycheck-copy-errors-as-kill
;; C-c ! ?         flycheck-describe-checker
;; C-c ! C         flycheck-clear
;; C-c ! H         display-local-help
;; C-c ! V         flycheck-version
;; C-c ! c         flycheck-buffer
;; C-c ! e         flycheck-explain-error-at-point
;; C-c ! h         flycheck-display-error-at-point
;; C-c ! i         flycheck-manual
;; C-c ! l         flycheck-list-errors
;; C-c ! n         flycheck-next-error
;; C-c ! p         flycheck-previous-error
;; C-c ! s         flycheck-select-checker
;; C-c ! v         flycheck-verify-setup
;; C-c ! x         flycheck-disable-checker

;; 
;; `interactive-haskell-mode' Minor Mode Bindings Starting With C-c:
;; key             binding
;; ---             -------

;; C-c C-b         haskell-interactive-switch
;; C-c C-c         haskell-process-cabal-build
;; C-c TAB         haskell-process-do-info
;; C-c C-k         haskell-interactive-mode-clear
;; C-c C-l         haskell-process-load-file
;; C-c C-r         haskell-process-reload
;; C-c C-t         haskell-process-do-type
;; C-c C-v         haskell-cabal-visit-file
;; C-c C-x         haskell-process-cabal
;; C-c C-z         haskell-interactive-switch

;; 
;; Major Mode Bindings Starting With C-c:
;; key             binding
;; ---             -------

;; C-c C-s         haskell-mode-toggle-scc-at-point
;; C-c C-,         haskell-mode-format-imports

;; 
;; Global Bindings Starting With C-c:
;; key             binding
;; ---             -------

;; C-c ESC         Prefix Command

;; C-c M-g         magit-file-dispatch

(evil-set-initial-state 'magit-mode 'motion)
(evil-set-initial-state 'magit-status-mode 'motion)

;; ;; ;; ;; kill buffer backwards
;; ;; ;; (global-set-key (kbd "M-S-<backspace>") 'crux-kill-line-backwards)
;; ;; ;; ;; crux-kill-and-join-forward
;; ;; ;; ;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; ;; ;; ;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; ;; ;; ;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; ;; ;; (global-unset-key (kbd "C-z"))
;; ;; ;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; ;; ;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; ;; ;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; ;; ;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; ;; ;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; ;; ;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; ;; ;; (global-set-key (kbd "<f1> c") 'calendar)
;; ;; ;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; ;; ;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

;; ;; ;; (global-set-key (kbd "M-/") 'hippie-expand)
;; ;; ;; (global-set-key (kbd "TAB") 'smart-tab)

;; ;; ;; (global-set-key (kbd "M-i") 'back-to-indentation)
;; ;; ;; (global-set-key (kbd "C-C-S-m") 'iy-go-to-char)




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

;; ;; ;; (global-set-key (kbd "C-x L") 'tprost-project-layout)
;; ;; ;; (global-set-key (kbd "C-x S-E") 'eval-last-sexp)

;; ;; ;; (global-set-key (kbd "C-x c") 'crux-create-scratch-buffer)
;; ;; ;; (global-set-key (kbd "C-x !") 'crux-sudo-edit)

;; ;; ;; (global-set-key (kbd "C-x C-y s") 'tprost-open-snippets-directory-dwim)

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

;; python
;; (define-key python-mode-map (kbd "C-c i") 'py-isort-buffer)
;; (define-key python-mode-map (kbd "C-M-i") 'my-python-mode-add-import)
;; (define-key python-mode-map (kbd "C-M-o") 'my-python-organize-imports)
;; (define-key python-mode-map (kbd "C-M-j") 'lsp-find-definition)

;; (global-set-key (kbd "C-x D") 'dired-in-downloads-directory)
;; (global-set-key (kbd "C-x M-w b b") 'my-copy-buffer-file-name-with-path)
;; (global-set-key (kbd "C-x M-w b w") 'my-copy-buffer-file-name-without-path)

;; mothertrucking TAB key
(global-set-key [tab] 'company-complete)
;; (global-set-key (kbd "TAB") 'tab-indent-or-complete)
;; ;; (global-set-key [(control return)] 'company-complete-common)

;; (define-key company-active-map [tab] 'expand-snippet-or-complete-selection)
;; (define-key company-active-map (kbd "TAB") 'expand-snippet-or-complete-selection)

;; (define-key yas-minor-mode-map [tab] nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)

;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
;; (define-key yas-keymap [(control tab)] 'yas-next-field)
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; TODO make this only for org capture mode somehow
(evil-set-initial-state 'org-mode 'insert)
;; (evil-set-initial-state 'org-capture-mode 'insert)

;; (define-key evil-normal-state-map (kbd "SPC") nil)
;; (define-key evil-monster-state-map (kbd "SPC") nil)
(define-key evil-emacs-state-map (kbd "<SPC>") 'set-mark-command)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

(global-set-key (kbd "TAB") 'company-complete)

(defhydra hydra-startup (global-map "C-x C-x x")
  "What would like to do?"
  ("j" my-open-my-japanese-file "japanese"))

(provide 'bindings)
