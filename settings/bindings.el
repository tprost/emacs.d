
;; keys on macosx
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
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
(global-set-key (kbd "C-S-A") 'beginning-of-line)
(global-set-key (kbd "M-a") 'avy-goto-line)
(global-set-key (kbd "M-S-A") 'avy-goto-line-above)
(global-set-key (kbd "C-M-a") 'beginning-of-buffer)
(global-set-key (kbd "C-M-S-A") 'beginning-of-buffer-other-window)

;; b
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "C-S-b") 'my-backward-to-char) ;; TODO
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "M-B") 'backward-to-word)
(global-set-key (kbd "C-M-b") 'backward-sentence)
(global-set-key (kbd "C-M-S-b") 'my-backward-to-sentence) ;; TODO
(global-set-key (kbd "H-b") 'backward-sexp)
(global-set-key (kbd "H-S-B") 'my-backward-to-sexp) ;; TODO

;; c
;; reserved for major or minor modes

;; C

;; d
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "C-S-D") 'backward-delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "M-S-D") 'backward-kill-word)
(global-set-key (kbd "C-M-d") 'kill-sentence)
(global-set-key (kbd "C-M-S-D") 'my-kill-to-end-of-buffer)
(global-set-key (kbd "H-d") 'kill-sexp)
(global-set-key (kbd "H-S-D") 'backward-kill-sexp)
;; (global-set-key (kbd "H-S-d") 'kill-sexp)


;; e
(global-set-key (kbd "C-e") 'end-of-visual-line)
(global-set-key (kbd "C-S-E") 'end-of-line)
(global-set-key (kbd "M-e") 'avy-goto-end-of-line)
(global-set-key (kbd "M-S-E") 'avy-goto-line-below) ;; TODO
(global-set-key (kbd "C-M-e") 'end-of-buffer)
(global-set-key (kbd "C-M-S-E") 'end-of-buffer-other-window)

;; f
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "M-f") 'forward-word)
(global-set-key (kbd "C-M-f") 'forward-sentence)
(global-set-key (kbd "H-f") 'forward-sexp)

;; g
;; (evil-global-set-key 'emacs  (kbd "g") 'keyboard-quit)

;; G
;; what could go here?
;; maybe resetting windows or something?

;; h
;; (evil-global-set-key 'emacs  (kbd "h") 'help-map)

;; H
;; (evil-global-set-key 'emacs  (kbd "H") 'describe-key)

;; i
(global-set-key (kbd "C-i") nil)
(global-set-key (kbd "C-i C-s") 'split-line)
(global-set-key (kbd "C-i C-f") 'crux-indent-defun)
(global-set-key (kbd "C-i C-x") 'indent-sexp)
(global-set-key (kbd "C-i C-d") 'delete-indentation)
(global-set-key (kbd "C-i C-;") 'indent-for-comment)
(global-set-key (kbd "C-i C-2") 'indent-to)
(global-set-key (kbd "C-i C-r") 'indent-region)
(global-set-key (kbd "C-i C-g") 'indent-rigidly)
(global-set-key (kbd "C-i C-l") 'indent-relative)	
(global-set-key (kbd "C-i <backspace>") 'indent-rigidly-left)
(global-set-key (kbd "C-i SPC") 'indent-rigidly-right)
(global-set-key (kbd "C-i C-c") 'indent-code-rigidly)
(global-set-key (kbd "M-i") 'indent-for-tab-command)

;; delete-indentation
;; ;; Tq
;; ;; https://emacsredux.com/blog/2016/01/31/use-tab-to-indent-or-complete/
;; (define-prefix-command 'my-indenting-map)
;; ;; (evil-global-set-key 'emacs  (kbd "T") 'my-indent-dwim)
;; (global-set-key (kbd "C-S-t") 'my-indenting-map)
;; (define-key my-indenting-map (kbd "f") 'crux-indent-defun)
;; (define-key my-indenting-map (kbd "t") 'my-indent-dwim)
;; (define-key my-indenting-map (kbd ";") 'indent-for-comment)
;; (define-key my-indenting-map (kbd "r") 'indent-rigidly)
;; (define-key my-indenting-map (kbd "x") 'indent-sexp)
;; (define-key my-indenting-map (kbd "p") 'indent-pp-sexp)
;; (define-key my-indenting-map (kbd "2") 'indent-to)
;; ;; TODO explore more indenting commands

;; indent-according-to-mode
;; newline-and-indent
;; reindent-then-newline-and-indent
;; indent-region

								
;; (evil-global-set-key 'emacs (kbd "i") 'evil-insert-state)
;; (evil-global-set-key 'emacs (kbd "<insertchar>") 'evil-insert-state)
;; (evil-global-set-key 'insert (kbd "<insertchar>") 'evil-emacs-state)
;; (evil-global-set-key 'emacs (kbd "<insert>") 'evil-insert-state)
;; (evil-global-set-key 'insert (kbd "<insert>") 'evil-emacs-state)


;; I
;; what could go here?
;; maybe open up my bindings files?

;; j
(define-prefix-command 'my-avy-map)
;; (evil-global-set-key 'emacs  (kbd "j") 'avy-goto-char)
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
;; (evil-global-set-key 'emacs  (kbd "k") 'my-major-kill-dwim)
(global-set-key (kbd "C-k") 'crux-kill-and-join-forward)
(global-set-key (kbd "M-k") 'crux-smart-kill-line)

;; K
;; (evil-global-set-key 'emacs  (kbd "K") 'crux-kill-line-backwards)
(global-set-key (kbd "C-S-k") 'crux-kill-line-backwards)
;; (global-set-key (kbd "M-S-k") 'kill-word)
;; (global-set-key (kbd "C-M-S-k") 'kill-sentence)

;; l
 ;; (evil-global-set-key 'emacs  (kbd "l") 'recenter-top-bottom)
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "M-l") 'recenter)
(global-set-key (kbd "C-M-l") 'recenter)

;; L
;; (evil-global-set-key 'emacs (kbd "L") 'lsp-keymap-prefix)

;; m
;; (evil-global-set-key 'emacs (kbd "m") 'set-mark-command)
(define-prefix-command 'my-mark-map)
(global-set-key (kbd "<C-m>") 'my-mark-map)
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

;; (evil-global-set-key 'emacs  (kbd "M") 'mc/mark-all-dwim)
(define-prefix-command 'my-mc-map)
(define-key my-mc-map (kbd "a") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "C-S-m") 'my-mc-map)
(define-key my-mc-map (kbd "C-S-m a") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "C-S-m r") 'mc/mark-all-in-region)
(define-key my-mc-map (kbd "C-S-m l") 'mc/edit-beginnings-of-lines)
(define-key my-mc-map (kbd "C-S-m m") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "C-S-m n") 'mc/mark-next-like-this)
(define-key my-mc-map (kbd "C-S-m p") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-m") 'my-mc-map)

;; n
;; (evil-global-set-key 'emacs (kbd "n") 'forward-paragraph)
;; (global-set-key (kbd "C-n") 'next-line)
;; (global-set-key (kbd "M-n") '

;; N

;; o
(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "M-o") 'other-frame)
;; code folding
;; (evil-global-set-key 'emacs (kbd "o") 'hs-toggle-hiding)
;; (evil-global-set-key 'emacs (kbd "C-o") 'hs-hide-block)
;; (evil-global-set-key 'emacs (kbd "M-o") 'hs-show-block)
;; (define-prefix-command 'my-hs-map)
;; (define-key my-hs-map (kbd "s") 'hs-show-all)
;; (define-key my-hs-map (kbd "h") 'hs-hide-all)
;; (define-key my-hs-map (kbd "l") 'hs-hide-level)
;; (evil-global-set-key 'emacs (kbd "C-M-o") 'my-hs-map)
;; (evil-global-set-key 'insert (kbd "C-o") 'my-open-line-below)
;; (evil-global-set-key 'insert (kbd "M-o") 'my-open-line-above)
;; (evil-global-set-key 'insert (kbd "C-M-o") 'my-trim-lines-above-and-below)

;; O
;; (evil-global-set-key 'emacs  (kbd "O") 'er/expand-region)
;; (evil-global-set-key 'emacs  (kbd "M-S-o") 'er/contract-region)
;; (global-set-key (kbd "C-@") 'er/expand-region)
;; (global-set-key (kbd "M-@") 'er/contract-region)


;; p
;; (evil-global-set-key 'emacs  (kbd "p") 'backward-paragraph)

;; P
;; (evil-global-set-key 'emacs (kbd "P") 'projectile-command-map)

                
                
;; q
;; (global-set-key (kbd "C-q") nil)
;; (global-set-key (kbd "C-q n") 'next-error)
;; (global-set-key (kbd "C-q p") 'previous-error)
(define-key flycheck-mode-map flycheck-keymap-prefix nil)
(setq flycheck-keymap-prefix (kbd "C-c !"))
(define-key flycheck-mode-map flycheck-keymap-prefix flycheck-command-map)
(define-key flycheck-command-map (kbd "C-n") 'flycheck-next-error)
(define-key flycheck-command-map (kbd "C-p") 'flycheck-previous-error)
(define-key flycheck-command-map (kbd "C-l") 'flycheck-list-errors)
;; (global-set-key (kbd "M-q") 'flycheck-next-error)

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


;; Q

;; r
;; (evil-global-set-key 'emacs  (kbd "r") 'isearch-backward)

;; R

;; s
;; (evil-global-set-key 'emacs  (kbd "s") 'isearch-forward)
;; (global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; S

;; t
;; (global-set-key (kbd "C-t") 'tab-next)
;; (global-set-key (kbd "C-S-T") 'tab-previous)
;; (global-set-key (kbd "M-t") 'tab-switch)
;; (global-set-key (kbd "M-S-T") 'tab-switch)



;; t is for typing!

;; (define-prefix-command 'my-editing-map)
;; ;; (evil-global-set-key 'emacs  (kbd "t") 'my-editing-map)
;; (global-set-key (kbd "C-t") 'my-editing-map)

;; (defhydra hydra-move-text (global-map "C-t N")
;;   "Drag lines around."
;;   ("n" move-text-down "down")
;;   ("p" move-text-up "up"))

;; (define-key my-editing-map (kbd "c") 'crux-capitalize-region)
;; (define-key my-editing-map (kbd "d") 'downcase-dwim)
;; (define-key my-editing-map (kbd "u") 'upcase-dwim)
;;  ;; TODO fix ispell and bind to something else
;; (define-key my-editing-map (kbd "?") 'crux-ispell-word-then-abbrev)
;; (define-key my-editing-map (kbd "o") 'my-open-line-below)
;; (define-key my-editing-map (kbd "p") 'hydra-move-text/move-text-up)
;; (define-key my-editing-map (kbd "n") 'hydra-move-text/move-text-down)
;; (define-key my-editing-map (kbd "^") 'crux-top-join-line)
;; (define-key my-editing-map (kbd "C-o") 'my-open-line-below-and-move)
;; (define-key my-editing-map (kbd "O") 'my-open-line-above)
;; (define-key my-editing-map (kbd "C-S-o") 'my-open-line-above-and-move)
;; (define-key my-editing-map (kbd "s") 'sort-lines)
;; (define-key my-editing-map (kbd "&") 'crux-duplicate-current-line-or-region)
;; (define-key my-editing-map (kbd "l") 'delete-blank-lines)
;; (define-key my-editing-map (kbd "w") 'fixup-whitespace)
;; ;; (define-key my-editing-map (kbd "&") 'crux-duplicate-and-comment-current-line-or-region)
;; ;; fixup-whitespace

;; T

;; u

;; U

;; v
;; (evil-global-set-key 'emacs (kbd "v") 'recenter)
;; (evil-global-set-key 'emacs (kbd "C-v") 'scroll-up)
;; (evil-global-set-key 'emacs (kbd "M-v") 'scroll-down)
;; (evil-global-set-key 'insert  (kbd "C-v") 'my-scroll-8-lines-up)
;; (evil-global-set-key 'insert  (kbd "M-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "C-M-v") 'recenter)
;; (global-set-key (kbd "C-v") 'scroll-up-command)
;; (global-set-key (kbd "M-v") 'scroll-down-command) ;; a lot somehow?
;; (global-set-key (kbd "C-M-v") 'scroll-line-up)
;; (evil-global-set-key 'emacs (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; V
;; (evil-global-set-key 'emacs  (kbd "V") 'scroll-down)
;; (global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "M-S-v") 'scroll-page-down)
;; (global-set-key (kbd "C-M-S-v") 'scroll-line-down)

;; w
;; (evil-global-set-key 'emacs  (kbd "w") 'whole-line-or-region-kill-ring-save)

;; x
(require 'bindings-c-x)
(global-set-key (kbd "M-x") 'helm-M-x)

;; X

;; y
(global-set-key (kbd "C-y") 'yank)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; Y
;; ?

;; z
(global-set-key (kbd "C-z") 'undo)

;; Z
;; ?

;; !


(global-set-key (kbd "C-\\") 'visual-line-mode)
(global-set-key (kbd "H-<return>") 'my-eval-dwim)
;; (evil-global-set-key 'emacs  (kbd "X") 'my-eval-dwim) ;; eval dwim
;; (global-set-key (kbd "M-S-x") 'my-eval-dwim)
;; (global-set-key (kbd "C-M-S-x") 'my-eval-dwim)
;; (global-set-key (kbd "C-<return>") 'my-eval-dwim)
;; (define-prefix-command 'my-eval-map)
;; (global-set-key (kbd "C-S-x") 'my-eval-map)
;; (define-key my-eval-map (kbd "x") 'my-eval-dwim) ;; eval dwim
;; (define-key my-eval-map (kbd "f") 'eval-defun)
;; (define-key my-eval-map (kbd "x") 'eval-last-sexp)
;; (define-key my-eval-map (kbd "y") 'crux-eval-and-replace)
;; (define-key my-eval-map (kbd "b") 'eval-buffer)
;; (define-key my-eval-map (kbd "r") 'eval-region)
;; (define-key my-eval-map (kbd "p") 'eval-print-last-sexp)


;; (global-set-key (kbd "C-.") 'set-mark-command)
;; (evil-global-set-key 'emacs (kbd ">") 'next-buffer)
;; (evil-global-set-key 'emacs (kbd "<") 'previous-buffer)

(global-set-key (kbd "C-<") 'scroll-down-line)
(global-set-key (kbd "C->") 'scroll-up-line)
(global-set-key (kbd "M-<") 'scroll-down-command)
(global-set-key (kbd "M->") 'scroll-up-command)

;; (evil-global-set-key 'emacs  (kbd "[") 'my-open-line-above)
;; (evil-global-set-key 'emacs  (kbd "{") 'my-open-line-above)

;; (evil-global-set-key 'emacs  (kbd "}") 'crux-smart-open-line)

;; (evil-global-set-key 'emacs  (kbd "]") 'crux-smart-open-line)

;; 
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.

;; (global-set-key (kbd "C-[") 'my-open-line-above)
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; <SPC>
;; (evil-global-set-key 'emacs  (kbd "SPC") 'set-mark-command)
;; (global-set-key (kbd "M-SPC") 'my-toggle-evil-mode)
(global-set-key (kbd "C-SPC") 'set-mark-command)

(global-set-key (kbd "H-r") 'lsp-rename)
(global-set-key (kbd "H-d") 'lsp-find-definition)
(global-set-key (kbd "H-j") 'lsp-goto-type-definition)
(global-set-key (kbd "H-i") 'lsp-organize-imports)


(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<find>") 'search-forward)
(global-set-key (kbd "<undo>") 'undo)
;; (global-set-key (kbd "C-z") 'undo)

;; (evil-global-set-key 'emacs  (kbd "%") 'query-replace)

;; (evil-global-set-key 'emacs  (kbd "<backspace>") 'backward-delete-char)
;; (evil-global-set-key 'emacs  (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'emacs  (kbd "M-<backspace>") 'crux-kill-line-backwards)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sentence)

;; @
(global-set-key (kbd "C-c C-.") 'hs-toggle-hiding)
(global-set-key (kbd "H-.") 'hs-toggle-hiding)

;; #
(global-set-key (kbd "C-#") 'er/expand-region)
(global-set-key (kbd "M-#") 'er/contract-region)


;; ;
(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)
(global-set-key (kbd "C-%") 'query-replace)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "H-%") 'lsp-rename)

(global-set-key (kbd "<f1>") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "<f2>") 'revert-buffer)
(global-set-key (kbd "<f3>") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "<f4>") 'kmacro-end-or-call-macro)

;; project level hotkeys
(global-set-key (kbd "<f5>") 'projectile-test-project)
(global-set-key (kbd "<f6>") 'projectile-compile-project)
(global-set-key (kbd "<f7>") 'projectile-run-vterm)
(global-set-key (kbd "<f8>") 'projectile-grep)
(global-set-key (kbd "<f9>") 'projectile-find-file)

(global-set-key (kbd "C-<return>") nil)
;; (global-set-key (kbd "C-<tab>") 'hs-toggle-hiding)
(global-set-key (kbd "M-<return>") nil)
;; (global-set-key (kbd "<f2>") lsp-command-map)
;; (global-set-key (kbd "<f3>") 'projectile-command-map)
;; (global-set-key (kbd "<f4>") 'hydra-window-management/body)

(define-key haskell-mode-map (kbd "<f5>") 'my-projectile-run-stack-testing-vterm)
(define-key haskell-mode-map (kbd "H-o") 'my-haskell-organize-imports)
(define-key haskell-mode-map (kbd "H-r") 'my-haskell-rename)
(define-key haskell-mode-map (kbd "H-C-r") 'my-haskell-retrie)
(define-key haskell-mode-map (kbd "H-RET") 'my-haskell-send-region)
(define-key haskell-mode-map (kbd "H-@") 'haskell-hide-toggle)
;; (define-key haskell-mode-map (kbd "H-") 'my-haskell-hs-hide-all)
;; (define-key haskell-mode-map (kbd "H-") 'my-haskell-hs-show-all)

;; (evil-define-key nil haskell-mode-map (kbd "C-c r") 'projectile-replace)
;; (evil-define-key nil haskell-mode-map (kbd "C-c i") 'haskell-interactive-switch)

;; (evil-define-key nil haskell-mode-map (kbd "C-c ,") 'haskell-mode-format-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-,") nil)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, n") 'haskell-navigate-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, s") 'haskell-sort-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, a") 'haskell-align-imports)

;; (evil-define-key 'emacs haskell-mode-map (kbd "o") 'haskell-hide-toggle)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-o") 'haskell-hide-toggle)
;; (evil-define-key 'emacs haskell-mode-map (kbd "M-o") 'haskell-hide-toggle)
;; TODO maybe this should be a prefix map for consistency?
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o") nil)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o o") 'haskell-hide-toggle-all)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o s") 'my-haskell-hs-show-all)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o h") 'my-haskell-hs-hide-all)

;; haskell lookup hoogle?


;; haskell-navigate-imports

;; haskell-process-load-file
;; haskell-process-reload

;; (evil-define-key nil haskell-mode-map (kbd "C-c R") 'projectile-replace)

;; (evil-define-key 'emacs 'haskell-mode (kbd "D") 'helm-M-x)


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

;; (evil-set-initial-state 'magit-mode 'motion)
;; (evil-set-initial-state 'magit-status-mode 'motion)

;; kill buffer backwards
;; (global-set-key (kbd "M-S-<backspace>") 'crux-kill-line-backwards)
;; crux-kill-and-join-forward
;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; (global-set-key (kbd "<f1> c") 'calendar)
;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

;; (global-set-key (kbd "M-/") 'hippie-expand)
;; (global-set-key (kbd "TAB") 'smart-tab)

;; (global-set-key (kbd "M-i") 'back-to-indentation)
;; (global-set-key (kbd "C-C-S-m") 'iy-go-to-char)




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

;; mothertrucking TAB key
(global-set-key [tab] 'company-complete)
(global-set-key (kbd "C-TAB") 'tab-next)
(global-set-key (kbd "S-C-TAB") 'tab-previous)
(global-set-key (kbd "M-<tab>") 'tab-switch)
(setq tab-bar-select-tab-modifiers '(hyper))
;; (global-set-key (kbd "TAB") 'tab-indent-or-complete)
;; (global-set-key [(control return)] 'company-complete-common)




 
;; (define-key company-active-map [tab] 'expand-snippet-or-complete-selection)
;; (define-key company-active-map (kbd "TAB") 'expand-snippet-or-complete-selection)

;; (define-key yas-minor-mode-map [tab] nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)

;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
;; (define-key yas-keymap [(control tab)] 'yas-next-field)
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; TODO make this only for org capture mode somehow
;; (evil-set-initial-state 'org-mode 'insert)
;; (evil-set-initial-state 'org-capture-mode 'insert)

;; (define-key evil-normal-state-map (kbd "SPC") nil)
;; (define-key evil-monster-state-map (kbd "SPC") nil)
;; (define-key evil-emacs-state-map (kbd "<SPC>") 'set-mark-command)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

(global-set-key (kbd "TAB") 'company-complete)

(define-prefix-command 'my-buffer-map)
(define-key 'my-buffer-map (kbd "r") 'crux-rename-file-and-buffer)
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

(global-set-key (kbd "H-r") 'lsp-rename)
(global-set-key (kbd "H-o") 'lsp-organize-imports)

;; (evil-global-set-key 'emacs (kbd "q") 'kill-current-buffer)
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

(require 'bindings-org-mode)

(provide 'bindings)

